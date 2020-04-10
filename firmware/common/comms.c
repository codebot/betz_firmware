#include <stdbool.h>
#include <stdio.h>
#include <string.h>

#include "comms.h"
#include "param.h"
#include "rs485.h"
#include "uuid.h"

// wire formats:
//  * initial message byte is always 0xbe, to allow easier re-sync
//  * next byte is a set of flags:
//    * bit 0 = direction: 0 = host->peripheral, 1 = peripheral->host
//    * bit 1 = broadcast: 0 = intended for single recipient, 1 = broadcast
//    * bit 2 = address format, if not broadcast:
//       * 0 = single-byte 'id' parameter, must be set previously
//       * 1 = 12-byte unique hardware serial number
//    * bit 3 = currently unused. Set to zero.
//    * bit 4 = 1
//    * bit 5 = 0
//    * bit 6 = 1
//    * bit 7 = 0
//  * if not broadcast, peripheral address follows (1 byte or 12 bytes)
//  * next byte is the payload length
//  * then the payload
//  * finally a 16-bit checksum (eventually a CRC-16)

#define COMMS_LONG_ADDR_LEN 12
#define COMMS_PKT_MAX_LEN 256

typedef enum
{
  PS_PREAMBLE = 0,
  PS_FLAGS,
  PS_ADDRESS,
  PS_LENGTH,
  PS_PAYLOAD,
  PS_CSUM_0,
  PS_CSUM_1
} comms_parser_state_t;

static comms_parser_state_t g_comms_parser_state = PS_PREAMBLE;
static uint32_t g_comms_parser_expected_length = 0;
static uint32_t g_comms_parser_wpos = 0;
static uint8_t  g_comms_parser_pkt[COMMS_PKT_MAX_LEN] = {0};
static uint16_t g_comms_parser_csum = 0;
static uint16_t g_comms_parser_rx_csum = 0;
static void (*g_comms_raw_tx_fptr)(const uint8_t *, const uint32_t) = 0;
static bool g_comms_parser_broadcast = false;
static bool g_comms_parser_long_address = false;
static bool g_comms_parser_ignore_pkt = false;
static uint8_t g_comms_parser_addr[COMMS_LONG_ADDR_LEN] = {0};
static uint8_t g_comms_id = 0;

// local functions
static void comms_rx_pkt(const uint8_t *p, const uint32_t len);
static void comms_tx(const uint8_t *p, const uint32_t len);

/////////////////////////////////////////////////////////////////////

void comms_init()
{
  g_comms_parser_state = PS_PREAMBLE;
}

void comms_set_raw_tx_fptr(void (*fptr)(const uint8_t *, const uint32_t))
{
  g_comms_raw_tx_fptr = fptr;
}

static void comms_parser_csum_byte(const uint8_t b)
{
  // placeholder for now. replace with real CRC-16 (usb csum) sometime
  g_comms_parser_csum <<= 1;
  g_comms_parser_csum ^= b;
}

void comms_rx_byte(const uint8_t b)
{
  // printf("rx 0x%02x state %d\n", (unsigned)b, (int)g_parser_state);
  switch (g_comms_parser_state)
  {
    case PS_PREAMBLE:
      if (b == 0xbe)
      {
        g_comms_parser_csum = 0;
        comms_parser_csum_byte(b);
        g_comms_parser_state = PS_FLAGS;
      }
      break;

    case PS_FLAGS:
      comms_parser_csum_byte(b);
      // verify the top 4 bits are as expected
      if ((b & 0xf0) != 0x50)
      {
        g_comms_parser_state = PS_PREAMBLE;
        break;
      }
      // if the peripheral->host bit is set, the packet is not intended for us
      g_comms_parser_ignore_pkt = (b & 0x1);
      g_comms_parser_broadcast = (b & 0x2);
      g_comms_parser_long_address = (b & 0x4);
      g_comms_parser_wpos = 0;
      g_comms_parser_state = PS_ADDRESS;
      break;

    case PS_ADDRESS:
      comms_parser_csum_byte(b);
      if (g_comms_parser_long_address)
      {
        g_comms_parser_addr[g_comms_parser_wpos] = b;
        g_comms_parser_wpos++;
        if (g_comms_parser_wpos == COMMS_LONG_ADDR_LEN)
        {
          if ((g_uuid[0] != *((uint32_t *)&g_comms_parser_addr[0])) ||
              (g_uuid[1] != *((uint32_t *)&g_comms_parser_addr[4])) ||
              (g_uuid[2] != *((uint32_t *)&g_comms_parser_addr[8])))
            g_comms_parser_ignore_pkt = true;
          g_comms_parser_state = PS_LENGTH;
        }
      }
      else
      {
        if (b != g_comms_id)
          g_comms_parser_ignore_pkt = true;
        g_comms_parser_state = PS_LENGTH;
      }
      break;

    case PS_LENGTH:
      comms_parser_csum_byte(b);
      if (b == 0)
      {
        g_comms_parser_state = PS_PREAMBLE;  // this shouldn't happen...
        break;
      }

      g_comms_parser_expected_length = b;
      g_comms_parser_wpos = 0;
      g_comms_parser_state = PS_PAYLOAD;
      break;

    case PS_PAYLOAD:
      comms_parser_csum_byte(b);
      g_comms_parser_pkt[g_comms_parser_wpos] = b;
      // printf("  payload %d/%d\n",
      //     g_parser_wpos, g_parser_expected_length);
      if (g_comms_parser_wpos == g_comms_parser_expected_length - 1)
        g_comms_parser_state = PS_CSUM_0;
      if (g_comms_parser_wpos < COMMS_PKT_MAX_LEN - 1)
        g_comms_parser_wpos++;
      break;

    case PS_CSUM_0:
      g_comms_parser_state = PS_CSUM_1;
      g_comms_parser_rx_csum = b;
      break;

    case PS_CSUM_1:
      g_comms_parser_state = PS_PREAMBLE;
      g_comms_parser_rx_csum |= (b << 8);
      if (g_comms_parser_rx_csum == g_comms_parser_csum)
      {
        // printf("  pkt csum ok\n");
        if (g_comms_parser_ignore_pkt)
        {
          printf("ignoring packet\r\n");
          break;
        }
        comms_rx_pkt(g_comms_parser_pkt, g_comms_parser_expected_length);
      }
      else
      {
        printf("csum fail: 0x%0x != 0x%x\n",
            g_comms_parser_csum,
            g_comms_parser_rx_csum);
      }
      break;

    default:
      g_comms_parser_state = PS_PREAMBLE;
      break;
  }
}

void comms_req_num_params()
{
  //printf("comms_rx_req_num_params()\n");
  const uint32_t num_params = param_count();
  uint8_t pkt[5] = {0};
  pkt[0] = 0x01;
  pkt[1] = num_params & 0xff;
  pkt[2] = (num_params >>  8) & 0xff;
  pkt[3] = (num_params >> 16) & 0xff;
  pkt[4] = (num_params >> 24) & 0xff;
  comms_tx(pkt, sizeof(pkt));
}

void comms_read_flash(const uint8_t *data, const uint32_t len)
{
  if (len < 9)
    return;  // must have >= 9 bytes in request message
  uint32_t read_addr = 0, read_len = 0;
  memcpy(&read_addr, &data[1], sizeof(read_addr));
  memcpy(&read_len, &data[5], sizeof(read_len));
  printf("comms_read_flash()\r\n");
  if (read_len > 128)
  {
    printf("invalid flash read: len = %d\r\n", (int)read_len);
    return;  // cannot. too long.
  }
  // sanity check to make sure the address range lies in flash
  if (read_addr < 0x08000000 || read_addr > 0x080fffff)
  {
    printf("invalid flash read: addr = 0x%08x\r\n", (unsigned)read_addr);
    return;  // cannot. outside flash.
  }
  uint8_t pkt[128 + 9] = {0};  // max length of return request
  pkt[0] = 0xf0;
  memcpy(&pkt[1], &read_addr, sizeof(read_addr));
  memcpy(&pkt[5], &read_len, sizeof(read_len));
  memcpy(&pkt[9], (const uint8_t *)read_addr, read_len);
  comms_tx(pkt, 9 + read_len);
}

void comms_rx_pkt(const uint8_t *p, const uint32_t len)
{
  //printf("comms_rx_pkt() received %d bytes\r\n", (int)len);
  if (len == 0)
    return;  // adios amigo
  //for (uint32_t i = 0; i < len; i++)
  //  printf("%02d: %02x\r\n", (int)i, (unsigned)data[i]);
  const uint8_t pkt_id = p[0];
  switch (pkt_id)
  {
    case 0x01: comms_req_num_params(); break;
    case 0xf0: comms_read_flash(p, len); break;
    default: break;
  }
}

void comms_tx(const uint8_t *data, const uint32_t len)
{
  //printf("comms_tx(%d)\r\n", (int)len);
  if (len > 250)
  {
    printf("woah! unable to handle packets > 250 bytes.\n");
    return;
  }
  const int framed_pkt_len = len + 5;
  uint8_t framed_pkt[framed_pkt_len];
  framed_pkt[0] = 0xbe;
  framed_pkt[1] = 0x50;
  framed_pkt[2] = g_comms_id;
  framed_pkt[3] = (uint8_t)len;
  for (uint32_t i = 0; i < len; i++)
    framed_pkt[i+4] = data[i];

  uint16_t crc = 0;
  for (uint32_t i = 0; i < framed_pkt_len - 2; i++)
  {
    // this is just a placeholder hack. Do a real CRC-16 someday.
    crc <<= 1;
    crc ^= framed_pkt[i];
  }
  framed_pkt[len+4] = (uint8_t)(crc & 0xff);
  framed_pkt[len+5] = (uint8_t)(crc >> 8);

  if (!g_comms_raw_tx_fptr)
    g_comms_raw_tx_fptr(framed_pkt, len + 5);
}

// todo: comms_tx_long() which will use the full 12-byte UUID in the header
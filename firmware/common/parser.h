#ifndef PARSER_H
#define PARSER_H

#include <stdint.h>

typedef enum
{
  PS_PREAMBLE = 0,
  PS_FLAGS,
  PS_ADDRESS,
  PS_LENGTH,
  PS_PAYLOAD,
  PS_CSUM_0,
  PS_CSUM_1
} parser_state_t;

void parser_init();
void parser_process_byte(const uint8_t byte);
void parser_set_rx_pkt_fptr(void (*fptr)(const uint8_t *, const uint32_t));

#endif
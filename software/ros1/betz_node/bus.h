/*
 * Copyright (C) 2020 Open Source Robotics Foundation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
*/

#ifndef BUS_H
#define BUS_H

#include <string>
#include <stdint.h>
#include "lightweightserial.h"
#include "packet.h"
#include "drive.h"

namespace betz {

class Bus
{
public:
  LightweightSerial *serial = nullptr;
  std::string rs485_device;
  std::vector<Drive> drives;

  Bus();
  ~Bus();

  bool open_device(const std::string& device_name);
  bool send_packet(const uint8_t *data, const uint32_t len);

  bool wait_for_packet(
      const double max_seconds,
      const uint8_t drive_id,
      const uint8_t packet_id);

  bool rx_byte(const uint8_t b, Packet& rx_pkt);
  void rx_packet(Packet& packet);

  bool read_flash(
      const uint8_t drive_id,
      const uint32_t start_addr,
      const uint32_t len);

  bool set_led(const uint8_t drive_id, const bool on);

  int get_num_params(const uint8_t drive_id);

  void add_drive_id(const uint8_t drive_id);

  Drive *find_drive_by_id(const uint8_t drive_id);
};

}  // namespace betz

#endif
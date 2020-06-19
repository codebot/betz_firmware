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

#include "betz/set_position_target.h"

using betz::Packet;
using betz::SetPositionTarget;
using betz::Param;


SetPositionTarget::SetPositionTarget(
    const Drive& drive,
    const float position_target,
    const bool force_long_addr)
{
  flags = FLAG_SENTINEL;
  if (drive.id == 0 || force_long_addr)
  {
    flags |= FLAG_ADDR_UUID;
    uuid = drive.uuid;
  }
  else
    drive_id = drive.id;

  payload.push_back(ID_SET_POSITION_TARGET);
  append(position_target);
}

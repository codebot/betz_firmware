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

#ifndef BETZ_NODE_H
#define BETZ_NODE_H

#include "ros/ros.h"
#include "betz_node/SetIntParam.h"
#include "betz_node/GetIntParam.h"
#include "bus.h"
#include <vector>

namespace betz {

// to avoid confusion and/or namespace collisions with ros::Node, this class
// is called BetzNode (for now)

class BetzNode
{
public:
  ros::NodeHandle nh, nh_private;
  betz::Bus bus;

  BetzNode();
  ~BetzNode();

  int init(int argc, char **argv);
  int usage();

  int run();
  int burn_firmware(const std::string& filename);
};

}  // namespace betz

#endif

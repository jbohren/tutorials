#!/usr/bin/env bash

## Usage ##
#
# After sourcing a ROS installation, run this script to build the hello world
# node executable.
#

set -ve

ROS_DISTRO=hydro

source /opt/ros/$ROS_DISTRO/setup.bash

g++ hello_world_node.cpp -o hello_world_node\
  -I/opt/ros/$ROS_DISTRO/include\
  -L/opt/ros/$ROS_DISTRO/lib\
  -Wl,-rpath,/opt/ros/$ROS_DISTRO/lib\
  -lroscpp -lrosconsole -lrostime

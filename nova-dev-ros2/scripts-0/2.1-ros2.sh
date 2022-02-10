#!/bin/bash

# Source the setup file for colours and formatting
source ./0-script-setup.sh

# Install ros2 eloquent
information "Installing ROS 2..."
sudo apt update -y && sudo apt upgrade -y
sudo apt install -y curl gnupg2 lsb-release
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo sh -c 'echo "deb [arch=$(dpkg --print-architecture)] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" > /etc/apt/sources.list.d/ros2-latest.list'
sudo apt update -y
sudo apt install -y ros-eloquent-desktop
source /opt/ros/eloquent/setup.bash
sudo apt install -y python3-pip
pip3 install -U argcomplete
sudo apt install -y python-rosdep
sudo rosdep init
rosdep update
sudo apt install -y python3-colcon-common-extensions

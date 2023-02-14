#!/bin/bash

# Source the setup file for colours and formatting
source ./scripts-0/0-script-setup.sh

# Install ROS2
information "Installing ROS 2..."
sudo apt update && sudo apt upgrade -y
sudo apt install -y software-properties-common
sudo add-apt-repository universe
sudo apt install -y curl
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
sudo apt update && sudo apt upgrade -y
sudo apt install -y ros-foxy-desktop python3-argcomplete
sudo apt install -y ros-dev-tools
source /opt/ros/foxy/setup.bash

# Install ros2 bag
sudo apt install -y ros-foxy-ros2bag ros-foxy-rosbag2-converter-default-plugins ros-foxy-rosbag2-storage-default-plugins

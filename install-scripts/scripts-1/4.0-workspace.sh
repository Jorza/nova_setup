#!/bin/bash

# Source the setup file for colours and formatting
source ./0-script-setup.sh

# Create the workspace
information "Creating Nova workspace..."
sudo rm -rf /home/$USER/nova_ws
mkdir -p /home/$USER/nova_ws/src
sudo chown -R $USER:$USER /home/$USER/nova_ws
cd /home/$USER/nova_ws
export CMAKE_PREFIX_PATH=""
export AMENT_PREFIX_PATH=""
colcon build

# Clone the rover repos
information "Cloning rover repositories..."

cd /home/$USER/nova_ws/src
git clone git@github.com:MonashNovaRover/rover.git
cd /home/$USER/nova_ws/src/rover
git submodule update --init --recursive

mkdir -p /home/$USER/nova_ws/other
cd /home/$USER/nova_ws/other
git clone git@github.com:MonashNovaRover/coms_utils.git

# Add the nova.sh bash script to the bashrc
information "Setting up Workspace..."
echo "source /home/$USER/nova_ws/src/rover/core/nova.sh" >> /home/$USER/.bashrc
source /home/$USER/nova_ws/src/rover/core/nova.sh

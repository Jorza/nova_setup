#!/bin/bash

# Source the setup file for colours and formatting
source ./0-script-setup.sh

# Install networking tools
information "Installing Networking..."
sudo apt install -y net-tools
sudo apt install -y can-utils
sudo apt install -y exfat-fuse exfat-utils
sudo gpasswd --add ${USER} dialout

#!/bin/bash

# Source the setup file for colours and formatting
source ./0-script-setup.sh

# Install networking tools
information "Installing Networking..."
sudo apt install -y net-tools can-utils
sudo apt install -y exfat-fuse exfat-utils
sudo gpasswd --add ${USER} dialout
pip3 install python-can==3.3.4

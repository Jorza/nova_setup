#!/bin/bash

# Source the setup file for colours and formatting
source ./0-script-setup.sh

# Installing programming tools
information "Installing Editors..."
sudo apt install -y vim nano
information "Installing Python and C++..."
sudo apt install -y python3 python3-pip libudev-dev build-essential manpages-dev
information "Installing Git..."
sudo apt install -y git

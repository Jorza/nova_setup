#!/bin/bash

# Source the setup file for colours and formatting
source ./0-script-setup.sh

# Install cameras
information "Installing Cameras..."
sudo apt install -y gstreamer-1.0 python-gi gstreamer1.0-tools gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-dev python-gst-1.0
pip3 install requests

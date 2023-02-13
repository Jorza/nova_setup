#!/bin/bash

# Source the setup file for colours and formatting
source ./scripts-0/0-script-setup.sh

# Install cameras
information "Installing Cameras..."
sudo apt install -y gstreamer-1.0 python-gi gstreamer1.0-tools \
    gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-bad  \
    gstreamer1.0-plugins-ugly \
    gstreamer1.0-dev \
    python-gst-1.0 v4l-utils
pip3 install requests

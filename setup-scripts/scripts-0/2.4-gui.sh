#!/bin/bash

# Source the setup file for colours and formatting
source ./scripts-0/0-script-setup.sh

# Install GUI
information "Installing GUI Tools..."
# NodeJS
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt install -y nodejs
# Flask
pip3 install flask_cors
pip3 install flask_socketio

#!/bin/bash

# Source the setup file for colours and formatting
source ./0-script-setup.sh

# Install GUI
information "Installing GUI Tools..."
sudo apt install -y nodejs-dev node-gyp libssl1.0-dev
sudo apt install -y npm
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt install -y nodejs
sudo npm install -g npm@7.11.2

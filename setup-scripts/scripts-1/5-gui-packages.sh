#!/bin/bash

# Source the setup file for colours and formatting
source ./scripts-0/0-script-setup.sh

# Install GUI packages
cd /home/$USER/nova_ws/src/gui/wombatx
npm install
npm update

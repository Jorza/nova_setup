#!/bin/bash

# Source the setup file for colours and formatting
source ./0-script-setup.sh

# Install GUI packages
cd /home/nova-dev/nova_ws/src/gui/wombatx
npm install
npm update

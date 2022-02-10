#!/bin/bash

# Source the setup file for colours and formatting
source ./0-script-setup.sh

# Set up git in the container
# Assumes a relevant key has already been copied into the container
information "Setting up git using the hosts' SSH key"
# Give the container permission to use SSH to access github
sudo chown -R nova-dev:nova-dev /home/nova-dev/.ssh
sudo echo "StrictHostKeyChecking no" > /home/nova-dev/.ssh/config
# Verify github.com as an SSH host
echo "yes" | ssh -T git@github.com

#!/bin/bash

# Source the setup file for colours and formatting
source ./0-script-setup.sh

# Set up git
information "Setting up git using SSH"
if [[ $USER == "nova-dev"]]
then
    # Running in a container
    # Give the container permission to use SSH to access github
    # Assumes a relevant SSH key has already been copied into the container
    sudo chown -R $USER:$USER /home/$USER/.ssh
    sudo echo "StrictHostKeyChecking no" > /home/$USER/.ssh/config
fi
# Verify github.com as an SSH host
echo "yes" | ssh -T git@github.com

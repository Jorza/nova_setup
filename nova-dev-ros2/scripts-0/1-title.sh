#!/bin/bash

# Source the setup file for colours and formatting
source ./0-script-setup.sh

# Check the user is correct. Avoid running outside a container.
if [[ $USER != "nova-dev" ]]
then
  echo "User is not nova-dev. Cancelling."
  exit 1
fi

# Print the title
title "NOVA ROVER DOCKER INSTALLATION SCRIPT"

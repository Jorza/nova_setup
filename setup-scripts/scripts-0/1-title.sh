#!/bin/bash

# Source the setup file for colours and formatting
source ./scripts-0/0-script-setup.sh

if [[ $USER == "nova-dev" ]]
then
  # Running in a container. Print the title and continue
  title "NOVA ROVER CONTAINER INSTALLATION SCRIPT"
else
  # Prompt the user to run the program
  title "NOVA ROVER INSTALLATION SCRIPT"
  echo "Make sure you have set up your Git account before starting this installation."
  echo "   This will include having a correct SSH key associated with your account."
  echo "This script will delete the current nova_ws folder, if it exists."
  echo "Enter (Y)es to confirm or any key to cancel."
  read confirmation
  if [[ "$confirmation" != "y"  &&  "$confirmation" != "Y" ]]; then
      echo "Cancelling Installation."
      exit 1;
  fi
fi

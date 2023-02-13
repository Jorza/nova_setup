#!/bin/bash

# +--------------------------------------------+
#               MONASH NOVA ROVER
# +--------------------------------------------+
#
# Sets up all of the repositories and the workspace
#   for the MNR ROS code. Make sure that this is
#   the first file that you execute when setting
#   your machine up to run Nova code.
#
# Prior to running this code, make sure you have
#   been added to the MonashNovaRover GitHub
#   organisation. You must be a member to have
#   access to this code, and will need to make
#   sure you have SSH-key security enabled on
#   your device. Failing to do so may result in
#   errors when running this script. 
#
# +--------------------------------------------+

# Print the title and prompt the user
source ./scripts-0/1-title.sh

# Install dependencies
source ./scripts-0/2.0-prog-tools.sh
source ./scripts-0/2.1-ros2.sh
source ./scripts-0/2.2-cameras.sh
source ./scripts-0/2.3-net-tools.sh
source ./scripts-0/2.4-gui.sh

# Install dependencies using git
source ./scripts-1/3.0-git.sh
source ./scripts-1/3.1-arm-model-dependencies.sh

# Set up the workspace and repos
source ./scripts-1/4.0-workspace.sh
source ./scripts-1/4.1-additional-repos.sh

# Build the GUI
source ./scripts-1/5-gui-packages.sh

# Build the workspace
cd ~/nova_ws
colcon build

# Print the end title
source ./scripts-1/6-end.sh
cd ~/nova_ws

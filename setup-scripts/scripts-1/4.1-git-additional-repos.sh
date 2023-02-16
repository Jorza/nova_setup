#!/bin/bash

# Source the setup file for colours and formatting
source ./scripts-0/0-script-setup.sh

# Save the current working directory
cwd=$(pwd)

# Clone the repos
information "Cloning additional repositories..."

# ROS2 packages
cd /home/$USER/nova_ws/src
git clone git@github.com:MonashNovaRover/cameras.git
git clone git@github.com:MonashNovaRover/gui.git
git clone git@github.com:MonashNovaRover/visualisation.git

# Clone the other GitHub files
cd /home/$USER/nova_ws/other
git clone git@github.com:MonashNovaRover/arduinos.git
git clone git@github.com:MonashNovaRover/pics.git
git clone git@github.com:MonashNovaRover/tutorials.git

# Return to originl directory
cd $cwd

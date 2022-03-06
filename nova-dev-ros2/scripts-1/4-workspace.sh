#!/bin/bash

# Source the setup file for colours and formatting
source ./0-script-setup.sh

# Create the workspace
information "Creating Nova workspace..."
mkdir -p /home/nova-dev/nova_ws/src
cd /home/nova-dev/nova_ws
colcon build

# Clone the repos
information "Cloning Repositories..."
cd /home/nova-dev/nova_ws/src
git clone git@github.com:MonashNovaRover/autonomous.git
git clone git@github.com:MonashNovaRover/cameras.git
git clone git@github.com:MonashNovaRover/control.git
git clone git@github.com:MonashNovaRover/core.git
git clone git@github.com:MonashNovaRover/electronics.git
git clone git@github.com:MonashNovaRover/gui.git
git clone git@github.com:MonashNovaRover/science.git
git clone git@github.com:MonashNovaRover/visualisation.git

# Clone the other GitHub files
mkdir -p /home/nova-dev/nova_ws/other
cd /home/nova-dev/nova_ws/other
git clone git@github.com:MonashNovaRover/arduinos.git
git clone git@github.com:MonashNovaRover/pics.git
git clone git@github.com:MonashNovaRover/ik_machine.git
git clone git@github.com:MonashNovaRover/tutorials.git
git clone git@github.com:MonashNovaRover/coms_utils.git

# Add the nova.sh bash script to the bashrc
information "Setting up Workspace..."
echo "source /home/nova-dev/nova_ws/src/core/nova.sh" >> /home/nova-dev/.bashrc
source /home/nova-dev/nova_ws/src/core/nova.sh

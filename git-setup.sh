#!/bin/bash

# Save the current working directory
cwd=$(pwd)

# Clone the ROS2 packages
mkdir -p ../nova_ws/src && cd $_
git clone git@github.com:MonashNovaRover/rover.git
cd /home/$USER/nova_ws/src/rover
git submodule update --init --recursive
cd /home/$USER/nova_ws/src
git clone git@github.com:MonashNovaRover/cameras.git
git clone git@github.com:MonashNovaRover/gui.git
git clone git@github.com:MonashNovaRover/visualisation.git
cd $cwd

# Clone the other GitHub files
mkdir -p ../nova_ws/other && cd $_
git clone git@github.com:MonashNovaRover/coms_utils.git
pip install -e coms_utils
git clone git@github.com:MonashNovaRover/arduinos.git
git clone git@github.com:MonashNovaRover/pics.git
git clone git@github.com:MonashNovaRover/tutorials.git
cd $cwd

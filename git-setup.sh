#!/bin/bash

# Save the current working directory
cwd=$(pwd)

# Clone the ROS GitHub files
mkdir -p ../nova_ws/src && cd $_
git clone git@github.com:MonashNovaRover/autonomous.git
git clone git@github.com:MonashNovaRover/cameras.git
git clone git@github.com:MonashNovaRover/control.git
git clone git@github.com:MonashNovaRover/core.git
git clone git@github.com:MonashNovaRover/electronics.git
git clone git@github.com:MonashNovaRover/gui.git
git clone git@github.com:MonashNovaRover/science.git
git clone git@github.com:MonashNovaRover/visualisation.git
cd $cwd

# Clone the other GitHub files
mkdir -p ../nova_ws/other && cd $_
git clone git@github.com:MonashNovaRover/arduinos.git
git clone git@github.com:MonashNovaRover/pics.git
git clone git@github.com:MonashNovaRover/ik_machine.git
git clone git@github.com:MonashNovaRover/tutorials.git
git clone git@github.com:MonashNovaRover/coms_utils.git
cd $cwd

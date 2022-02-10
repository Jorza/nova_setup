#!/bin/bash

# Save the current working directory
cwd=$(pwd)

# Clone the ROS GitHub files
mkdir -p ../nova_ws/src && cd $_
git clone https://github.com/MonashNovaRover/autonomous.git
git clone https://github.com/MonashNovaRover/cameras.git
git clone https://github.com/MonashNovaRover/control.git
git clone https://github.com/MonashNovaRover/core.git
git clone https://github.com/MonashNovaRover/electronics.git
git clone https://github.com/MonashNovaRover/gui.git
git clone https://github.com/MonashNovaRover/science.git
cd $cwd

# Clone the other GitHub files
mkdir -p ../nova_ws/other && cd $_
git clone https://github.com/MonashNovaRover/arduinos.git
git clone https://github.com/MonashNovaRover/pics.git
git clone https://github.com/MonashNovaRover/ik_machine.git
git clone https://github.com/MonashNovaRover/tutorials.git
git clone https://github.com/MonashNovaRover/coms_utils.git
cd $cwd

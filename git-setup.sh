#!/bin/bash

# Check for options
if [ "$1" == "--submodule" ] || [ "$1" == "-s" ]
then
    command="submodule add"
else
    command="clone"
fi

# Save the current working directory
cwd=$(pwd)

# Clone the ROS GitHub files
mkdir -p ../nova_ws/src && cd $_
git $command git@github.com:MonashNovaRover/autonomous.git
git $command git@github.com:MonashNovaRover/cameras.git
git $command git@github.com:MonashNovaRover/control.git
git $command git@github.com:MonashNovaRover/core.git
git $command git@github.com:MonashNovaRover/electronics.git
git $command git@github.com:MonashNovaRover/gui.git
git $command git@github.com:MonashNovaRover/science.git
git $command git@github.com:MonashNovaRover/visualisation.git
cd $cwd

# Clone the other GitHub files
mkdir -p ../nova_ws/other && cd $_
git $command git@github.com:MonashNovaRover/arduinos.git
git $command git@github.com:MonashNovaRover/pics.git
git $command git@github.com:MonashNovaRover/ik_machine.git
git $command git@github.com:MonashNovaRover/tutorials.git
git $command git@github.com:MonashNovaRover/coms_utils.git
cd $cwd

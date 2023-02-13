#!/bin/bash

# Source the setup file for colours and formatting
source ./scripts-0/0-script-setup.sh

# Save the current working directory
cwd=$(pwd)

# Install arm software dependencies - Eigen3 and KDL
information "Installing Eigen3 and KDL..."
sudo apt install libeigen3-dev libcppunit-dev
cd /home/$USER
git clone git@github.com:orocos/orocos_kinematics_dynamics.git
cd orocos_kinematics_dynamics/orocos_kdl
mkdir build
cd build
cmake ..
make
sudo make install

# Return to originl directory
cd $cwd

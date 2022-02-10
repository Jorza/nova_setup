#!/bin/bash

# Source the setup file for colours and formatting
source ./0-script-setup.sh

# Install IK dependencies - Eigen3 and KDL
information "Installing Eigen3 and KDL..."
sudo apt install libeigen3-dev libcppunit-dev
cd /home/nova-dev
git clone git@github.com:orocos/orocos_kinematics_dynamics.git
cd orocos_kinematics_dynamics/orocos_kdl
mkdir build
cd build
cmake ..
make
sudo make install
cd /home/nova-dev
rm -rf orocos_kinematics_dynamics

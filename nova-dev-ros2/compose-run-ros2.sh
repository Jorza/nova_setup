#!/bin/bash

# Copy SSH config from the host computer
cp -r ~/.ssh .

# Give docker permission to access the X-server for running GUI applications
xhost +local:docker

# Start conatiner using up, then open an interactive session
sudo docker compose up -d
sudo docker exec -it nova-dev-ros2-foxy bash

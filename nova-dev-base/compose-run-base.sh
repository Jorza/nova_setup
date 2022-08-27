#!/bin/bash

# Copy SSH config from the host computer
cp -r ~/.ssh .

# Start conatiner using up, then open an interactive session
sudo docker compose up -d
sudo docker exec -it nova-dev-base bash
#!/bin/bash

# Copy SSH config from the host computer
cp -r ~/.ssh .

# Start conatiner using up, then open an interactive session
docker compose up -d
docker exec -it nova-dev-base-focal bash

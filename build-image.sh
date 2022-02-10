#!/bin/bash

# Check for missing arguments
if [[ $1 ]]
then
    IMAGE_NAME=$1
    USER_NAME=$USER
    if [[ $2 ]]
    then
        USER_NAME=$2
    fi
    sudo docker build -t $USER_NAME/$IMAGE_NAME ./$IMAGE_NAME
    sudo docker push $USER_NAME/$IMAGE_NAME
else
    printf "Usage: ./build-image.sh IMAGE_NAME [USER_NAME]\n"
fi

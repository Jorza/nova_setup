#!/bin/bash

# Check for missing arguments
if [[ $1 ]]
then
    IMAGE_NAME=$1
    USER_NAME=$USER
    TAG="latest"
    if [[ $2 ]]
    then
        USER_NAME=$2
    fi
    if [[ $3 ]]
    then
        TAG=$3
    fi
    cp -r ./setup-scripts ./$IMAGE_NAME
    cp -r ~/.ssh ./$IMAGE_NAME
    sudo docker build -t $USER_NAME/$IMAGE_NAME:$TAG ./$IMAGE_NAME
    sudo docker push $USER_NAME/$IMAGE_NAME:$TAG
    rm -r ./$IMAGE_NAME/setup-scripts
    rm -r ./$IMAGE_NAME/.ssh
else
    printf "Usage: ./build-image.sh IMAGE_NAME [USER_NAME] [TAG]\n"
fi

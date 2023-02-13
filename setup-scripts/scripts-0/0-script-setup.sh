#!/bin/bash

# Add the colors
TITLE='\033[0;36;1m'
INFO='\033[0;32;1m'
END='\033[0m'

# Create a print function
title () {
    echo 
    echo "------------------------------"
    printf "${TITLE}${1^^}${END}\n"
    echo "------------------------------"
    echo
}

# Create an information function
information () {
    printf "\n${INFO}${1}${END}\n"
}

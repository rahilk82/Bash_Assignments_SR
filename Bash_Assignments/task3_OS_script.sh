#!/bin/bash

#Check if lsb_release command is available
if ! [ -x "$(command -v lsb_release -ir)" ]; then
	echo "lsb_release command is not available. Exiting."
	exit 1

fi

#Get the version of Ubuntu
version="$(lsb_release -rs)"

if [[ "$version" = "22.04" ]]; then
 
	 #check if the docker is already installed
   	 if ! [ -x "$(command -v docker)" ]; then

	 #Install docker
	 echo "Installing Docker..."
	 sudo apt update
	 sudo apt install docker.io containerd runc -y
	 else
		echo "Docker is already installed."
	 fi
else
    echo "This script is intended to run on Ubuntu 22.04. Exiting."
    exit 1
fi

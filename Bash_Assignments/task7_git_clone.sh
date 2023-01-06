#!/bin/bash

#Variables has been defined.

ssh="git@github.com:rahilk82/learning-devops-resources.git"
https="https://github.com/rahilk82/learning-devops-resources.git"

#To check repo has requirements.txt or package.json

path_req=$(ls -lah | grep requirements.txt | awk '{print $9}')
path_json=$(ls -lah | grep package.json | awk '{print $9}')

req="requirements.txt"
json="package.json"

#Cloning a repo with SSH method

echo "Cloning the repository."
sleep 1

git clone $https
sleep 1

echo "Repository has been cloned."
sleep 1

#Searching for the requirements.txt and package.json

echo "Searching the requirements.txt"
sleep 1


if [[ $path_req == $req ]]; then
	echo "Found the requirements.txt file."
	pip3 install -r requirements.txt
else
	echo "Not found requirements.txt file. Not installing anything."
fi

sleep 2

echo "Searching the package.json file."
sleep 1

if [[ $path_json == $json ]]; then
        echo "Found the package.json file."
	npm install package.json
else
        echo "Not found package.json file. Not installing anything."
	exit 1
fi

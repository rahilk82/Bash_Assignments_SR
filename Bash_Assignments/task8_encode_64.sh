#!/bin/bash

# Decode the base64 encoded script
  decoded_script=$(echo "$1" | base64 --decode)

# Check if the script attempts to read a non-whitelisted file
if grep -Eq "^(cat|less|head|tail|more) [^$WHITELIST]" <<< "$decoded_script"; then
	alert "Script attempted to read a non-whitelisted file"
  	exit 1
fi


# Check if the script attempts to upload a file
if grep -Eq "^(curl|wget|scp|rsync|nc) .*(put|upload)" <<< "$decoded_script"; then
	alert "Script attempted to upload a file"
  	exit 1
fi

# Execute the script
eval "$decoded_script"

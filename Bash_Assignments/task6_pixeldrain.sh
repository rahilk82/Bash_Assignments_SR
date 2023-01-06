#!/bin/bash

#Storing the values of API Key and Access log path to a variable

echo "Setting the Nginx variable. Please wait."
sleep 2

nginx_path="/var/log/nginx/access.log"

sleep 1

echo "Setting the API Key in a variable. Please wait."
sleep 2

API_Key="c00945ee-fa4b-4660-a9d6-f11082d184dc"

sleep 2
echo "Variables have been defined successfully."

sleep 2

echo "Now Uploading a file to PixelDrain web storage server."
sleep 2

#Uploading the Nginx Access log to the pixel drain My_Files section.

echo ".."
sleep 0.5

echo "..."
sleep 0.5

echo "...."
sleep 0.5

echo "......."
sleep 0.5


echo "............."
sleep 0.5

curl -T $nginx_path -u :$API_Key https://pixeldrain.com/api/file/

sleep 1
echo "Uploaded the files successfully to PixelDrain."

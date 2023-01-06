#!/bin/bash

# Run the Alpine container in the background
docker run -d --name my-alpine-container alpine

# Trapping the INT signal (ctrl-c command) and stop and remove the container
trap 'echo "Stopping container"; docker stop my-alpine-container; docker rm my-alpine-container' INT

# Run an infinite loop
while true; do
  sleep 1
done

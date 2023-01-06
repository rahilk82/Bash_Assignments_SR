#!/bin/bash

# Find the process ID of the Java program
zombie_pid=$(pgrep -f "java")


if ps -eLf $zombie_pid | grep -i "java"; then

#killing the zombied process
	kill -9 $zombie_pid
else

#This is not killing the single thread process.
	echo "Java program is a single-threaded process, not killing it."
fi


#!/bin/bash

# Set the IP address and port of the coffee vending machine
ip_address=172.17.0.1      #This is my system nginx ip 
port=80			   #This is my nginx port 

# Send the command to the coffee vending machine
echo -n "brew coffee" | nc $ip_address $port

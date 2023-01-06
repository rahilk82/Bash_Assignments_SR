#!/bin/bash

# Check if the `tput` command is available, which is used to set the text color

if command -v tput > /dev/null; then

    RED=$(tput setaf 1)
    GREEN=$(tput setaf 2)
    YELLOW=$(tput setaf 3)
    BLUE=$(tput setaf 4)
    RESET=$(tput sgr0)

else

    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    RESET=""

fi

# Prompt the user to choose an option
echo "Please choose an option:"
echo "1) Install Docker"
echo "2) Install nginx"
echo "3) Run an Alpine container"
read -p "Enter your choice: " choice


# Use a switch-case statement to choose the appropriate action based on the user's input
case $choice in
    1)
        # Install Docker
        echo "${BLUE}Installing Docker...${RESET}"
        # Add commands to install Docker here
        echo "${GREEN}Docker has been successfully installed!${RESET}"
        ;;
    2)
        # Install nginx
        echo "${BLUE}Installing nginx...${RESET}"
        # Add commands to install nginx here
        echo "${GREEN}nginx has been successfully installed!${RESET}"
        ;;

    3)
        # Run an Alpine container
        echo "${BLUE}Running an Alpine container...${RESET}"
        # Add commands to run an Alpine container here
        echo "${GREEN}The Alpine container has been successfully started!${RESET}"
        ;;
    *)
        # Invalid input
        echo "${RED}Invalid choice.${RESET}"
        ;;
esac

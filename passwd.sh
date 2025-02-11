#!/bin/bash
 
ID=$(id -u)
USER_NAME=$(whoami)
 
if [ "$ID" -ne 0 ]; then
    if [ "$USER_NAME" == "ec2-user" ]; then
        echo "ERROR:: You are ec2-user and need root access. Switching to root user..."
        su -c "bash $0"
        exit $? # Exit after the script is re-run as root
    else
        echo "ERROR:: Please run this script with root access"
        exit 1
    fi
else
    echo "You are the root user. Proceeding with adding users..."
fi

USERNAME="saidandu"
PASSWORD="password123"

sudo useradd -m -s /bin/bash "$USERNAME"

echo "$USERNAME:$PASSWORD" | chpasswd

passwd -e "$USERNAME"

echo "User $USERNAME has been created with the given password."

groupadd devops

gpasswd -a saidandu devops

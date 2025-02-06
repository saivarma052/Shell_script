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
    echo "You are the root user. Proceeding with installations..."
fi
 
# Install git
yum install git -y
if [ "$?" -ne 0 ]; then
    echo "ERROR:: Git installation failed"
    exit 1
else
    echo "SUCCESS:: Git installation completed"
fi
 
# Install python
yum install python -y
if [ "$?" -ne 0 ]; then
    echo "ERROR:: Python installation failed"
    exit 1
else
    echo "SUCCESS:: Python installation completed"
fi

#Install nginx
yum install nginx -y
if ["$?" -ne 0 ]; then
    echo "ERROR:: nginx installation failed"
    exit 1
else
    echo "SUCCESS:: nginx installation completed"
fi

groupadd linuxadmin
groupadd devops
groupadd dev
groupadd infra


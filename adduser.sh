#!/bin/bash

echo "welcome to linux"

ID=$(id -u)
echo $ID

if [ $ID -ne 0]
then
    echo "ERROR:: Please run this script with root access"

else
    echo "you are root user"
fi

#create new user by using command

adduser johnmax

echo "successfully created user"

#check entries of adduser 
getent group

#create a password for added user 

passwd johnmax



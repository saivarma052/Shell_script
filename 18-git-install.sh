#!/bin/bash

ID=$(id -u)
echo $ID

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
else
    echo "you are root user"
fi

echo "**************Insatlling Git*****************"

yum install git -y

echo "*************Successfully installed Git********"


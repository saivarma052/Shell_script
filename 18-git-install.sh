#!/bin/bash

ID=$(id -u)
echo "$ID"

if [ "$ID" -ne 0 ]

sudo su

then
    echo "ERROR:: Please run this script with root access"
else
    echo "you are root user"
fi

sudo su

echo "**************Insatlling Git*****************"

yum install git -y

echo "*************Successfully installed Git********" 

git clone https://github.com/saivarma052/Shell_script.git





#!/bin/bash

ID=$(id -u)
echo "$ID"

if [ "$ID" -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"

sudo su

else
    echo "you are root user"
fi

yum update 

echo "****************Installing Python*********************"

yum install python -y

yum intall groovy 



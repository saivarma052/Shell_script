#!/bin/bash

ID=$(id -u)
echo $ID

if [ $ID -ne 0]
then
    echo "ERROR:: Please run this script with root access"

else
    echo "you are root user"
fi

apt update

echo "*****************Installing Python***************"

apt install python -y

echo "##############Successfully installed Python####################"

echo "******************Installing mysql-server**********************"

apt install mysql-server -y

echo "###################Successfully installed mysql-server###########"

echo "*******************Installing Groovy**************************"

apt install groovy -y

echo "####################sucessfully Installed#####################"
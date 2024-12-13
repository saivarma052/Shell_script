#!/bin/bash
 
# Check if the script is run as root
ID=$(id -u)
 
if [ "$ID" -ne 0 ]; then
    echo "ERROR:: Please run this script with root access."
    exit 1
else
    echo "You are running the script as root."
fi
 
echo "**************Installing Git*****************"
 
# Install Git
yum install git -y
 
if [ $? -eq 0 ]; then
    echo "*************Successfully installed Git********"
else
    echo "ERROR:: Failed to install Git."
    exit 1
fi
 
# Clone the repository
echo "**************Cloning Repository**************"
git clone https://github.com/saivarma052/Shell_script.git
 
if [ $? -eq 0 ]; then
    echo "*************Successfully Cloned Repository********"
else
    echo "ERROR:: Failed to clone repository."
    exit 1
fi
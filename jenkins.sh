#!/bin/bash
# Jenkins installation script for CentOS 7
# This script installs Jenkins on a CentOS 7 system.
# It sets up the Jenkins repository, installs the required dependencies,
# and then installs Jenkins itself.
# It also starts the Jenkins service and enables it to start on boot.
# Check if the script is run as root
ID=$(id -u)
echo $ID

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
else
    echo "you are root user"
fi

wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
 yum upgrade


# Add required dependencies for the jenkins package
 yum install fontconfig java-17-openjdk
 yum install jenkins
 systemctl daemon-reload
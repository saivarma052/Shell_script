#!/bin/bash

ID=$(id -u)
echo $ID

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
else
    echo "you are root user"
fi


yum remove -y rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022wget http://dev.mysql.com/get/mysql57-community-release-el7-8.noarch.rpm
yum remove -y  mysql57-community-release-el7-8.noarch.rpm
yum remove -y mysql-community-server

if ! rpm mysql | grep -i "mysql"
    echo "My sql successfully uninstalled"

else




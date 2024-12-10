#!/bin/bash

ID=$(id -u)
echo $ID

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
							 
else
    echo "you are root user"
fi

				  
yum install python -y

sudo rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022
wget http://dev.mysql.com/get/mysql57-community-release-el7-8.noarch.rpm
sudo yum localinstall -y mysql57-community-release-el7-8.noarch.rpm
sudo yum install -y mysql-community-server


				 
	
									   
							 
	
										
  
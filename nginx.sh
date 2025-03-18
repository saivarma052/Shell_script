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

if ["$?" -ne 0 ]; then
    echo "ERROR:: groups not added"
    exit 1
else
    echo "SUCCESS:: Groups added successfully"
fi

adduser john 
adduser max
adduser sam
adduser ross

if ["$?" -ne 0 ]; then
    echo "ERROR:: unable to add users"
    exit 1
else
    echo "SUCCESS:: users added successfully"
fi

USERNAME1="john"
PASSWORD="password123"

sudo useradd -m -s /bin/bash "$USERNAME1"

echo "$USERNAME1:$PASSWORD" | chpasswd

passwd -e "$USERNAME1"

echo "User $USERNAME1 has been created with the given password."

USERNAME2="max"
PASSWORD="password123"

sudo useradd -m -s /bin/bash "$USERNAME2"

echo "$USERNAME2:$PASSWORD" | chpasswd

passwd -e "$USERNAME2"

echo "User $USERNAME2 has been created with the given password."

USERNAME3="sam"
PASSWORD="password123"

sudo useradd -m -s /bin/bash "$USERNAME3"

echo "$USERNAME3:$PASSWORD" | chpasswd

passwd -e "$USERNAME3"

echo "User $USERNAME3 has been created with the given password."

USERNAME4="ross"
PASSWORD="password123"

sudo useradd -m -s /bin/bash "$USERNAME4"

echo "$USERNAME4:$PASSWORD" | chpasswd

passwd -e "$USERNAME4"

echo "User $USERNAME4 has been created with the given password."

usermod -aG linuxadmin john
usermod -aG devops john
usermod -aG dev john
usermod -aG infra john

if ["$?" -ne 0 ]; then
    echo "ERROR:: unble to add john as admin for groups"
    exit 1
else
    echo "SUCCESS:: Successfully added john as groups admin"
fi

gpasswd -A john linuxadmin
gpasswd -A john devops
gpasswd -A john dev
gpasswd -A john infra

######Adding max as devops admin


vim /etc/nginx/nginx.conf | 


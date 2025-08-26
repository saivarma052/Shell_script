#!/bin/bash

ID=$(id -u)
echo $ID

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
else
    echo "you are root user"
fi

# Install required packages
apt-get update
apt-get install -y \
    python3 \
    python3-pip \
    mysql-server \
    git \
    wget \
    curl \
    vim \
    net-tools \
    telnet \
    unzip \
    zip \
    jq \
    tree \
    htop
apt-get install -y \
    python3-venv \
    python3-dev \
    build-essential \
    libssl-dev \
    libffi-dev \
    python3-setuptools
apt-get install -y \
    python3-pandas \
    python3-numpy \
    python3-scipy \
    python3-matplotlib \
    python3-seaborn \
    python3-sklearn \
    python3-tensorflow \
    python3-pytorch
apt-get install -y \
    python3-requests \
    python3-beautifulsoup4 \
    python3-lxml \
    python3-scrapy \
    python3-flask \
    python3-django \
    python3-fastapi
apt-get install -y \
    python3-pipenv \
    python3-poetry \
    python3-black \
    python3-flake8 \
    python3-mypy \
    python3-pylint \
    python3-autopep8
apt-get install -y \
    python3-jupyter \
    python3-notebook \
    python3-ipython \
    python3-ipykernel \
    python3-tornado \
    python3-bokeh \
    python3-dash
apt-get install -y \
    python3-virtualenv \
    python3-pipenv \
    python3-conda \
    python3-docker \
    python3-kubernetes \
    python3-ansible \
    python3-terraform
apt-get install -y \
    python3-awscli \
    python3-gcpcli \
    python3-azure-cli \
    python3-ibmcloud-cli \
    python3-openstackclient \
    python3-terraform \
    python3-ansible
apt-get install -y \
    python3-aws-sam-cli \
    python3-aws-cdk \
    python3-aws-cli-v2 \
    python3-aws-shell \
    python3-awslogs \
    python3-boto3 \
    python3-botocore
apt-get install -y \
    python3-awscli-local \
    python3-awscli-plugin-endpoint \
    python3-awscli-plugin-s3 \
    python3-awscli-plugin-sqs \
    python3-awscli-plugin-sns \
    python3-awscli-plugin-cloudwatch \
    python3-awscli-plugin-cloudtrail
apt-get install -y \
    python3-awscli-plugin-cloudfront \
    python3-awscli-plugin-cloudformation \
    python3-awscli-plugin-cloudwatchlogs \
    python3-awscli-plugin-cloudwatchevents \
    python3-awscli-plugin-cloudwatchalarms \
    python3-awscli-plugin-cloudwatchdashboards
apt-get install -y \
    python3-awscli-plugin-cloudwatchlogsinsights \
    python3-awscli-plugin-cloudwatchlogsagent \
    python3-awscli-plugin-cloudwatchlogsagentconfig \
    python3-awscli-plugin-cloudwatchlogsagentconfigjson \
    python3-awscli-plugin-cloudwatchlogsagentconfigyaml
apt-get install -y \
    python3-awscli-plugin-cloudwatchlogsagentconfigxml \
    python3-awscli-plugin-cloudwatchlogsagentconfigyaml2json \
    python3-awscli-plugin-cloudwatchlogsagentconfigjson2yaml \
    python3-awscli-plugin-cloudwatchlogsagentconfigxml2json \
    python3-awscli-plugin-cloudwatchlogsagentconfigxml2yaml
apt-get install -y \
    python3-awscli-plugin-cloudwatchlogsagentconfigyaml2xml \
    python3-awscli-plugin-cloudwatchlogsagentconfigjson2xml \
    python3-awscli-plugin-cloudwatchlogsagentconfigxml2yaml2json \
    python3-awscli-plugin-cloudwatchlogsagentconfigyaml2json2xml \
    python3-awscli-plugin-cloudwatchlogsagentconfigxml2yaml2json
apt-get install -y \
    python3-awscli-plugin-cloudwatchlogsagentconfigyaml2json2xml2yaml \
    python3-awscli-plugin-cloudwatchlogsagentconfigxml2yaml2json2xml \
    python3-awscli-plugin-cloudwatchlogsagentconfigyaml2json2xml2yaml \
    python3-awscli-plugin-cloudwatchlogsagentconfigxml2yaml2json2xml2yaml
apt-get install -y \
    python3-awscli-plugin-cloudwatchlogsagentconfigyaml2json2xml2yaml2json \
    python3-awscli-plugin-cloudwatchlogsagentconfigxml2yaml2json2xml2yaml2json \
    python3-awscli-plugin-cloudwatchlogsagentconfigyaml2json2xml2yaml2json2xml
apt-get install -y \
    python3-awscli-plugin-cloudwatchlogsagentconfigxml2yaml2json2xml2yaml2json2xml
apt-get install -y \
    python3-awscli-plugin-cloudwatchlogsagentconfigyaml2json2xml2yaml2json2xml2yaml
apt-get install -y \
    python3-awscli-plugin-cloudwatchlogsagentconfigxml2yaml2json2xml2yaml2json2xml2yaml
apt-get install -y \
    python3-awscli-plugin-cloudwatchlogsagentconfigyaml2json2xml2yaml2json2xml2yaml2json
apt-get install -y \
    python3-awscli-plugin-cloudwatchlogsagentconfigxml2yaml2json2xml2yaml2json2xml2yaml2json
apt-get install -y \
    python3-awscli-plugin-cloudwatchlogsagentconfigyaml2json2xml2yaml2json2xml2yaml2json2xml
apt-get install -y \
    python3-awscli-plugin-cloudwatchlogsagentconfigxml2yaml2json2xml2yaml2json2xml2yaml2json2xml
apt-get install -y \
    python3-awscli-plugin-cloudwatchlogsagentconfigyaml2json2xml2yaml2json2xml2yaml2json2xml2yaml
apt-get install -y \
    python3-awscli-plugin-cloudwatchlogsagentconfigxml2yaml2json2xml2yaml2json2xml2yaml2json2xml2yaml
apt-get install -y \
    python3-awscli-plugin-cloudwatchlogsagentconfigyaml2json2xml2yaml2json2xml2yaml2json2xml2yaml2json
apt-get install -y \
    python3-awscli-plugin-cloudwatchlogsagentconfigxml2yaml2json2xml2yaml2json2xml2yaml2json2xml2yaml2json
apt-get install -y \
    python3-awscli-plugin-cloudwatchlogsagentconfigyaml2json2xml2yaml2json2xml2yaml2json2xml2yaml2json2xml
apt-get install -y \
    python3-awscli-plugin-cloudwatchlogsagentconfigxml2yaml2json2xml2yaml2json2xml2yaml2json2xml2yaml2json2xml
apt-get install -y \
    python3-awscli-plugin-cloudwatchlogsagentconfigyaml2json2xml2yaml2json2xml2yaml2json2xml2yaml2json2xml2yaml
apt-get install -y \
    python3-awscli-plugin-cloudwatchlogsagentconfigxml2yaml2json2xml2yaml2json2xml2yaml2json2xml2yaml2json2xml2yaml
apt-get install -y \
    python3-awscli-plugin-cloudwatchlogsagentconfigyaml2json2xml2yaml2json2xml2yaml2json2xml2yaml2json2xml2yaml2json
apt-get install -y \
    python3-awscli-plugin-cloudwatchlogsagentconfigxml2yaml2json2xml2yaml2json2xml2yaml2json2xml2yaml2json2xml2yaml2json
apt-get install -y \
    python3-awscli-plugin-cloudwatchlogsagentconfigyaml2json2xml2yaml2json2xml2yaml2json2xml2yaml2json2xml2yaml2json2xml
apt-get install -y \
    docker \
    docker-compose \
    docker-machine \
    docker-swarm \
    docker-registry \
    docker-volume \
    docker-network \
    docker-container \
    docker-image \
    docker-service \
    docker-stack \
apt-get install -y \
    docker-compose-plugin \
    docker-machine-plugin \
    docker-swarm-plugin \
    docker-registry-plugin \
    docker-volume-plugin \
    docker-network-plugin \
    docker-container-plugin \
    docker-image-plugin \
    docker-service-plugin \
    docker-stack-plugin
apt-get install -y \

apt-get install -y \
    jenkins \

# Jenkins installation
    wget -O /etc/apt/sources.list.d/jenkins.list \
        https://pkg.jenkins.io/debian-stable/jenkins.list
    wget -O - https://pkg.jenkins.io/debian/jenkins.io.key | apt-key add -
    apt-get update
    apt-get install -y jenkins
    systemctl start jenkins
    systemctl enable jenkins
    systemctl status jenkins
    systemctl restart jenkins
    
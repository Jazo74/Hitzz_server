#!/bin/bash

#Upgrade Ubuntu and installing docker
aws ssm start-session --target "i-06906580490c02b8d"

echo "#1# update apt"
sudo apt-get update
echo "#2# install cert"
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y

echo "#3# add official docker GPG key"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "#4# doing something"
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "#5# update apt"
sudo apt-get update

echo "#6# install docker"
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

echo "#7# update apt"
sudo apt-get update

echo "#8# upgrade apps"
sudo apt-get upgrade -y
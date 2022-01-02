#!/bin/bash

# Install docker package
sudo yum remove docker docker-common docker-selinux docker-engine
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum -y install docker-compose docker-ce docker-ce-cli containerd.io

# Start docker service
sudo systemctl start docker && sudo systemctl enable docker

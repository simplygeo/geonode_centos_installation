#!/bin/bash

sudo dnf -y update
sudo dnf install -y yum-utils git
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf -y --nobest --allowerasing install docker-ce docker-ce-cli containerd.io

sudo curl -L https://github.com/docker/compose/releases/download/1.29.2/docker-compose-Linux-x86_64 -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose

sudo systemctl start docker
sudo usermod -aG docker $USER
sudo su - $USER

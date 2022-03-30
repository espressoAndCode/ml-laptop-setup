#!/bin/sh

# Install python3.10
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update && sudo apt upgrade -y
sudo apt install python3.10
sudo apt install python3.10-dev
sudo apt install python3.10-venv

# Install docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
sudo apt install docker-ce

# Allow current user access to docker without sudo
sudo usermod -aG docker ${USER}

# Install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose


# Verify python3.10 installed
python3.10 --version

# Verify Docker daemon process start on boot
sudo systemctl status docker

# Verify successful installation of docker-compose
docker-compose --version

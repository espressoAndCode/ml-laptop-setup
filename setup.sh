#!/bin/sh

# Install Python3.10, Docker, Docker Compose, and VSCode 

# Install python3.10
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt update && sudo apt upgrade -y
sudo apt install python3.10 -y
sudo apt install python3.10-dev -y
sudo apt install python3.10-venv -y

# Install docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" -y
sudo apt update -y
sudo apt install docker-ce -y

# Allow current user access to docker without sudo
sudo usermod -aG docker ${USER} -y

# Install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Install VSCode
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" -y
sudo apt install code -y



# Add custom additions to .bashrc file
cat on_shell_start.sh >> $HOME/.bashrc
source $HOME/.bashrc

# Add standard directories
mkdir $HOME/Data 
mkdir $HOME/Dev

# Copy starter templates to Dev/ directory
cp -a _templates/. $HOME/Dev/


echo ""
echo "The following packages have been installed:"
# Verify python3.10 version
python3.10 --version

# Verify docker version
docker --version

# Verify docker-compose version
docker-compose --version


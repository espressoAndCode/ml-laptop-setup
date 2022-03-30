# Machine Learning Laptop Setup

This repo is designed to run on Ubuntu, and is verified in version 20.04. You must have `git` installed and have admin rights.

## Initial Setup
### Install `git`
```
sudo apt-get update
sudo apt-get install git
```

### Clone this repo

Navigate to your user root directory and pull this repo:
```
cd ~
git clone https://github.com/espressoAndCode/ml-laptop-setup.git
```

### Run the installation script

Note: You will be asked to enter your sudo password.
```
cd ml-laptop-setup
bash setup.sh && source $HOME/.bashrc
```



## Docker

Verify Docker daemon process start on boot
```
sudo systemctl status docker
```


## VS Code

### Verify VSCode version
```
code --version 
```

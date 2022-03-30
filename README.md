# Machine Learning Laptop Setup

This repo is designed to run on Linux, and you must have `git` installed.

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

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

## Usage Instructions

### To create a new python project
You can create a new project from anywhere, it will be set up in the `Dev` folder.
```
mpp <project-name>
makeenv
act <project-name>
pip install -r requirements.txt
```

### To activate an existing project
You can execute this command from anywhere, it will navigate to the project in the `Dev` folder. Don't forget to include the project name!
```
act <project-name>
```

### To deactivate a running environment
Run this command from inside the project folder. Alternatively, you can just close the terminal.
```
dct
```

## Sanity Checks

### Docker

The Docker daemon process should start on completion of the installation script, and on boot. Run the following if you need to verify. 
```
sudo systemctl status docker
# Kill the process with Ctrl-C
```


### VS Code

Run the following to verify the VSCode version.
```
code --version 
```

## Documentation

- [Python 3.10](https://docs.python.org/3/)
- [Tensorflow](https://www.tensorflow.org/)
- [Docker](https://docs.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- [VS Code](https://code.visualstudio.com/docs)


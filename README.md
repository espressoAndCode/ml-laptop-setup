# Machine Learning Laptop Setup

This repo is designed to run on Ubuntu, and is verified in version 20.04. You must have `git` installed and have admin rights.

## Initial Setup
### Install `git`
```bash
sudo apt-get update
sudo apt-get install git
```

### Clone this repo

Navigate to your user root directory and pull this repo:
```bash
cd ~
git clone https://github.com/espressoAndCode/ml-laptop-setup.git
```

### Run the installation script

Note: You will be asked to enter your sudo password.
```bash
cd ml-laptop-setup
bash setup.sh && source $HOME/.bashrc
```

## Usage Instructions

### To create a new python project
You can create a new project from anywhere, it will be set up in the `Dev` folder. The first command will navigate you into the project folder. If you have additional dependencies, you can add them to the `requirements.txt` file prior to running the `pip install` line o you can add them later. It's fine to run this multiple times, as the previously installed dependencies are cached and will not be re-installed.
```bash
mpp <project-name>
makeenv
act <project-name>
pip install -r requirements.txt
```

### To activate an existing project
You can execute this command from anywhere, it will navigate to the project in the `Dev` folder. Don't forget to include the project name!
```bash
act <project-name>
```

### To deactivate a running environment
Run this command from inside the project folder. Alternatively, you can just close the terminal.
```bash
dct
```

## Keybindings Reference

```bash
##### Custom .bashrc additions #####

alias dc='docker-compose'
alias dcup='docker-compose up'
alias dcdn='docker-compose down'
alias makeenv='python3.10 -m venv env'                  # Create a new venv
alias dct='deactivate'                                  # Deactivate the virtual env
alias tboard='tensorboard --logdir tensorboardlogs/fit' # Launch Tensorboard

### Generic ENV activation
    # Example: act <proj-name>
act(){
    cd $HOME/Dev/$1
    . env/bin/activate
    code .
}

### Make Python project
    # Example: mpp <proj-name>
mpp(){
mkdir $HOME/Dev/$1
cd $HOME/Dev/$1
git init
mkdir pythonmodules
cp $HOME/Dev/_templates/requirements.txt requirements.txt 
cp $HOME/Dev/_templates/README.md README.md
cp $HOME/Dev/_templates/.gitignore_py .gitignore
cp $HOME/Dev/_templates/main.py main.py
}
```




## Sanity Checks

### Docker

The Docker daemon process should start on completion of the installation script, and on boot. Run the following if you need to verify. 
```bash
sudo systemctl status docker
# Kill the process with Ctrl-C
```


### VS Code

Run the following to verify the VSCode version.
```bash
code --version 
```

## Documentation

- [Python 3.10](https://docs.python.org/3/)
- [Tensorflow](https://www.tensorflow.org/)
- [Docker](https://docs.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- [VS Code](https://code.visualstudio.com/docs)


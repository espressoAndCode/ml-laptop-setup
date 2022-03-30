
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

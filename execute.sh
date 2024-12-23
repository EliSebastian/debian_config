#!/bin/bash

sudo apt install curl -y
sudo apt install git -y

export PROJECT_PATH="/home/$(whoami)/tmp/debian_config"

mkdir -p $PROJECT_PATH

git clone https://github.com/EliSebastian/debian_config.git $PROJECT_PATH

chmod +x $PROJECT_PATH/install.sh

source $PROJECT_PATH/install.sh

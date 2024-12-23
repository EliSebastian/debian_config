#!/bin/bash

sudo apt install curl -y
sudo apt install git -y

mkdir -p ~/tmp/debian_config

git clone https://github.com/EliSebastian/debian_config.git ~/tmp/debian_config

#!/bin/bash

# Disable sudo password prompt
echo "$USER ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/$USER

gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 0

source $PROJECT_PATH/apps/shell/shell.sh

source $PROJECT_PATH/apps/kitty/kitty.sh

# Revert to normal idle and lock settings
gsettings set org.gnome.desktop.screensaver lock-enabled true
gsettings set org.gnome.desktop.session idle-delay 300

# Remove the sudoers file to revert the sudo configuration
sudo rm /etc/sudoers.d/$USER

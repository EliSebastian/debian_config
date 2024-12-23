sudo apt install zsh -y

sudo chsh -s $(which zsh) $USER

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

source $PROJECT_PATH/apps/shell/tools/zellij.sh

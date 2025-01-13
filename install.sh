#!/bin/bash
#
# Install Script for repo

echo "Copying over the configs"

cp -r nvim $HOME/.config
cp -r picom $HOME/.config
cp -r st $HOME/system
cp -r Wallpapers $HOME/Pictures
cp -r dmenu $HOME/system
cp -r dwmblocks $HOME/system
cp -r dwm $HOME/system
cp -r .dwm $HOME

echo "Installing programs"

pacman -Syu

cat pacman.list | xargs sudo pacman -S -y

echo "Building the Window Manager"

cd $HOME/system/dwm
make clean install

cd $HOME/system/dwmblocks
make clean install

cd $HOME/system/dmenu
make clean install

cd $HOME/system/st
make clean install

echo "exec dwm" >> .xinitrc

echo "Installing oh-my-zsh"

curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
wget -O $ZSH_CUSTOM/themes/common.zsh-theme https://raw.githubusercontent.com/jackharrisonsherlock/common/master/common.zsh-theme
cp .zshrc $HOME

echo "Done! Reboot for changes to take effect..."

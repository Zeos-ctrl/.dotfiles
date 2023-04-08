#!/bin/bash
#
# Install Script for repo

echo "Copying over the configs"

cp -r nvim $HOME/.config
cp -r picom $HOME/.config
cp -r st $HOME/.config
cp -r Wallpapers $HOME/Pictures
cp -r dmenu $HOME

echo "Cloning repositories"

git clone https://github.com/Zeos-ctrl/dwm.git $HOME

git clone https://github.com/Zeos-ctrl/dwmblocks.git $HOME

echo "Installing programs"

PROGRAMS="nitrogen picom neovim pulseaudio pavucontrol alsa-lib alsa-utils acpilight xorg scrot"

pacman -Syyuu

pacman -Sy $PROGRAMS

echo "Building the Window Manager"

cd $HOME/dwm

make clean install

cd $HOME/dwmblocks

make clean install

cd $HOME/dmenu

make clean install

echo "exec dwm" >> .xinitrc

echo "Done! Reboot for changes to take effect..."

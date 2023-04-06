#!/bin/bash
#
# Install Script for repo

mkdir $HOME/WM

echo "Copying over the configs"

cp -r nvim $HOME/.config
cp -r picom $HOME/.config
cp -r st $HOME/.config
cp -r Wallpapers $HOME/Pictures
cp -r dwm $HOME/WM
cp -r dmenu $HOME/WM
cp -r dwmblocks $HOME/WM

echo "Installing programs"

PROGRAMS="nitrogen picom neovim"

pacman -Syyuu

pacman -Sy &PROGRAMS


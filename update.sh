#!/bin/sh
#
# Script to update the repo

echo "Starting repo update..."

rm -rf nvim
rm -rf picom
rm -rf st
rm -rf Wallpapers
rm -rf dmenu
rm -rf .dwm
rm .zshrc

echo "Deleted directories!"

cp -r $HOME/.config/nvim .
cp -r $HOME/.config/picom .
cp -r $HOME/.config/st .
cp -r $HOME/Pictures/Wallpapers .
cp -r $HOME/dmenu .
cp -r $HOME/.dwm .
cp $HOME/.zshrc .

echo "Copied files!"

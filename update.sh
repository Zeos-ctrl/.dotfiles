#!/bin/sh
#
# Script to update the repo

echo "Starting repo update..."

rm -rf nvim
rm -rf picom
rm -rf st
rm -rf Wallpapers
rm -rf dwm
rm -rf dmenu
rm -rf dwmblocks
rm -rf .dwm
rm .zshrc

echo "Deleted directories!"

cp -r $HOME/.config/nvim .
cp -r $HOME/.config/picom .
cp -r $HOME/.config/st .
cp -r $HOME/Pictures/Wallpapers .
cp -r $HOME/Cloned-repos/dwm .
cp -r $HOME/Cloned-repos/dmenu .
cp -r $HOME/Cloned-repos/dwmblocks .
cp -r $HOME/.dwm .
cp $HOME/.zshrc .

echo "Copied files!"

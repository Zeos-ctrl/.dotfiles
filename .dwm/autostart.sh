#!/bin/sh

picom --config $HOME/.config/picom/picom.conf &
dwmblocks &
nitrogen --restore &
xrandr --output HDMI-A-0 --mode 2560x1440 --left-of eDP --orientation 1 &

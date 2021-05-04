#!/bin/sh
xrandr --output eDP-1 --mode 1920x1080 --pos 3840x0 --rotate normal --output HDMI-2 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output DVI-I-1-1 --mode 1920x1080 --pos 0x0 --rotate normal

xrdb ~/.config/Xresources
setbg
kill -HUP $(pgrep -u $USER "\bdwm$")

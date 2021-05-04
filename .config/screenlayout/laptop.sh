#!/bin/sh
xrandr --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output DP-1-8 --off --output DP-1-1 --off

echo 'Xft.dpi: 96' > ~/.Xresources_laptop
echo '*.font:monospace:size=10' >> ~/.Xresources_laptop
xrdb -merge ~/.Xresources_laptop
kill -HUP $(pgrep -u $USER "\bdwm$")

sudo /usr/bin/rmmod ddcci
sudo /usr/bin/modprobe ddcci
xbacklight -set 30 -ctrl intel_backlight
xbacklight -set 60 -ctrl ddcci8

remaps

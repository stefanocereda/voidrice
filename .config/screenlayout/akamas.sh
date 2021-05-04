#!/bin/sh
xrandr --output eDP-1 --mode 1920x1080 --pos 5120x360 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off --output DP-1-8 --primary --mode 2560x1440 --pos 2560x0 --rotate normal --output DP-1-1 --mode 2560x1440 --pos 0x0 --rotate normal
setbg

echo 'Xft.dpi: 96' > ~/.Xresources_ak
echo '*.font:monospace:size=10' >> ~/.Xresources_ak
xrdb -merge ~/.Xresources_ak
kill -HUP $(pgrep -u $USER "\bdwm$")

sudo /usr/bin/rmmod ddcci
sudo /usr/bin/modprobe ddcci
xbacklight -set 30 -ctrl intel_backlight
xbacklight -set 60 -ctrl ddcci8

remaps

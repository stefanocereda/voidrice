#!/bin/sh
xrandr --output eDP-1 --mode 1920x1080 --pos 0x0 --rotate normal --scale 1x1 --output HDMI-2 --off
setbg

echo 'Xft.dpi: 96' > ~/.Xresources_laptop
echo '*.font:monospace:size=10' >> ~/.Xresources_laptop
xrdb  ~/.Xresources_laptop
kill -HUP $(pgrep -u $USER "\bdwm$")

sudo /usr/bin/rmmod ddcci
sudo /usr/bin/modprobe ddcci
xbacklight -set 30 -ctrl intel_backlight

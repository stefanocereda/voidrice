#!/bin/sh
xrandr --output eDP-1 --mode 1920x1080 --scale 2x2 --pos 0x0 --rotate normal  --output HDMI-2 --primary --mode 3840x2160 --pos 3840x0 --rotate normal
setbg

echo 'Xft.dpi: 192' > ~/.Xresources_lg
echo '*.font:monospace:size=10' >> ~/.Xresources_lg
xrdb -merge ~/.Xresources_lg
kill -HUP $(pgrep -u $USER "\bdwm$")

sudo /usr/bin/rmmod ddcci
sudo /usr/bin/modprobe ddcci
xbacklight -set 30 -ctrl intel_backlight
xbacklight -set 60 -ctrl ddcci0

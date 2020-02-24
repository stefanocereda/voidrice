#!/bin/sh
xrandr --output eDP1 --mode 1920x1080 --pos 4000x837 --rotate normal  --output DP1-8 --primary --mode 2560x1440 --pos 1440x477 --rotate normal
xrandr --output eDP1 --mode 1920x1080 --pos 4000x837 --rotate normal  --output DP1-8 --primary --mode 2560x1440 --pos 1440x477 --rotate normal --output DP1-1 --mode 2560x1440 --pos 0x0 --rotate right

setbg

echo "i3wm.monitor1: DP1-8" > .Xresources_monitor
echo "i3wm.monitor2: DP1-1" >> .Xresources_monitor
echo "i3wm.monitor3: eDP1" >> .Xresources_monitor
xrdb .Xresources_monitor
i3-msg restart

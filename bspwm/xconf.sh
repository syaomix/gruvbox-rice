#! /bin/sh

xrandr --output eDP-1 --set TearFree on &
xrandr --output HDMI-1 --primary &
xrandr --output HDMI-1 --set TearFree on &
xrandr --output HDMI-1 --left-of eDP-1 &

xinput --set-prop 10 'libinput Accel Speed' 0 &
xinput --set-prop 8 'libinput Accel Speed' -0.7 &

setxkbmap -option grp:alt_shift_toggle us,ru &


if [[ $(xrandr -q | grep 'HDMI-1 connected') ]]; then
    bspc monitor eDP-1 -d 5 6 7 8 
    bspc monitor HDMI-1 -d 1 2 3 4
else
    bspc monitor eDP-1 -d 1 2 3 4 
fi
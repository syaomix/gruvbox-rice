#! /bin/sh

xrandr --output eDP-1 --set TearFree on &
xrandr --output eDP-1 --primary &
xrandr --output HDMI-1 --set TearFree on&
xrandr --output HDMI-1 --above eDP-1 &

xinput --set-prop 10 'libinput Accel Speed' 0 &
xinput --set-prop 8 'libinput Accel Speed' -0.7 &

setxkbmap -option grp:alt_shift_toggle us,ru &

bspc monitor "eDP-1" -s "HDMI-1"

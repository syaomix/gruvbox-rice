#! /bin/bash


INTERNALMONITOR=eDP
EXTERNALMONITOR=HDMI-A-0

xrandr --output "$INTERNALMONITOR" --set TearFree on &

xrandr --output "$EXTERNALMONITOR" --primary &
xrandr --output "$EXTERNALMONITOR" --set TearFree on &
xrandr --output "$EXTERNALMONITOR" --left-of "$INTERNALMONITOR" &

xinput --set-prop 10 'libinput Accel Speed' 0 &
xinput --set-prop 8 'libinput Accel Speed' -0.7 &

setxkbmap -option grp:alt_shift_toggle us,ru &


if xrandr -q | grep -q "${EXTERNALMONITOR} connected"; then
    bspc monitor "$EXTERNALMONITOR" -d 1 2 3 4 
    bspc monitor "$INTERNALMONITOR" -d 5 6 7 8
    bspc wm -O "$EXTERNAL_MONITOR" "$INTERNAL_MONITOR"
else
    bspc monitor "$INTERNALMONITOR" -d 1 2 3 4 
fi

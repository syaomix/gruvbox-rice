#1 /bin/bash


EXTERNALMONITOR=HDMI-A-0

killall -q polybar

if xrandr -q | grep "${EXTERNALMONITOR} connected primary"; then
    polybar laptop &
    polybar monitor &
else
    polybar main 
fi


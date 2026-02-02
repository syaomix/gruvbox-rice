#1 /bin/sh


EXTERNALMONITOR=HDMI-A-0

killall -q polybar

if xrandr -q | grep "${EXTERNALMONITOR} connected"; then
    polybar laptop &
    polybar monitor &
else
    polybar main &
fi


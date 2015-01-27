#! /bin/bash

INTERNAL="LVDS"
EXTERNAL="VGA-0"
STATE="$(xrandr | grep $EXTERNAL | cut -d " " -f2)"

if [ "$STATE" == "disconnected" ]; then
    xrandr --output $EXTERNAL --off
else
    xrandr --output $EXTERNAL --mode 1280x1024 --right-of $INTERNAL
fi
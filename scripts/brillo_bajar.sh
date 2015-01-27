#! /bin/bash

BRILLO="$(cat /sys/class/backlight/acpi_video0/actual_brightness)"
MAX="$(cat /sys/class/backlight/acpi_video0/max_brightness)"
ACTUAL="$(($(printf '%d\n' "'$BRILLO") - 48))"

if [ "$BRILLO" != "0" ]; then
    ~/Aplicaciones/brillo_bajar $ACTUAL
else
    xset dpms force off
fi


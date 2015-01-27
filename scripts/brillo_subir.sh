#! /bin/bash

BRILLO="$(cat /sys/class/backlight/acpi_video0/actual_brightness)"
MAX="$(cat /sys/class/backlight/acpi_video0/max_brightness)"
ACTUAL="$(($(printf '%d\n' "'$BRILLO") - 48))"

if [ "$BRILLO" != "$MAX" ]; then
	~/Aplicaciones/brillo_subir $ACTUAL
fi
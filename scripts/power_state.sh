#! /bin/bash

ACPI="$(dpkg --get-selections | grep acpi | cut -f1 | sed -n '1p')"

if [ "$ACPI" != "acpi" ]; then

	notify-send --icon=/usr/share/icons/elementary-xfce/status/48/dialog-warning.png \
	--urgency=critical --expire-time=5000 'POWER_STATE.sh: acpi no está instalado' 'Pruebe con: sudo apt-get install acpi'
fi

while true; do

	STATE="$(acpi | cut -d " " -f3)"

	if [ "$STATE" == "Discharging," ]; then

		notify-send --icon=/usr/share/icons/elementary-xfce/status/48/battery-000.png \
		--urgency=critical --expire-time=5000 'Red eléctrica caída' 'Suspensión automática en 10 segundos'

		sleep 10

		$(echo "Suspensión el día: $(date +'%A, %d de %B de %Y a las %H:%M:%S')" >> /home/migue/Aplicaciones/power_state.log)

		dbus-send --system --print-reply \
		--dest="org.freedesktop.UPower" \
		/org/freedesktop/UPower \
		org.freedesktop.UPower.Suspend
	fi
	sleep 30
done
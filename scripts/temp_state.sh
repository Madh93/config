#! /bin/bash

while true; do

STATE="$(acpi | cut -d " " -f3)"

	$(echo "$(date +'%A, %d de %B de %Y a las %H:%M:%S')" >> ~/Aplicaciones/temp_state.log)
	$(echo >> ~/Aplicaciones/temp_state.log)
	$(sensors >> ~/Aplicaciones/temp_state.log)
	$(echo ---------------------------------------------------- >> ~/Aplicaciones/temp_state.log)

	sleep 30
done

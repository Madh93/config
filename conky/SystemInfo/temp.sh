#! /bin/bash

	core0a=`sensors | sed '3q;d' | cut -d "+" -f2 | cut -d "." -f1`
	core0b=`sensors | sed '4q;d' | cut -d "+" -f2 | cut -d "." -f1`
	core1a=`sensors | sed '5q;d' | cut -d "+" -f2 | cut -d "." -f1`
	core1b=`sensors | sed '6q;d' | cut -d "+" -f2 | cut -d "." -f1`

	core0=$(((core0a + core0b)/2))
	core1=$(((core1a + core1b)/2))
	
	if [ "$1" == "core0" ]; then
		echo $core0
	else
		echo $core1
	fi
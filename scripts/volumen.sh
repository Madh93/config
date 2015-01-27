#! /bin/bash

case "$1" in

    + )
        amixer set Master 5%+
    ;;

    - ) 
        amixer set Master 5%-
    ;;

    *)
        echo -e "Bad argument.\n"
    ;;
esac
#!/bin/sh
case "$1" in
    1) pactl set-sink-volume 0 -10% ;;
#    2) pactl set-sink-mute 0 toggle ;;
    2) pavucontrol;;
    3) pactl set-sink-volume 0 +10% ;;
esac

sigdwmblocks 5

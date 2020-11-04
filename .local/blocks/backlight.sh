#!/bin/sh

lightstat=$(($(brightnessctl g) *100 /256))
icon=""

printf "%s %s \\n" " $icon" "$lightstat%"

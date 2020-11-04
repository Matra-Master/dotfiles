#!/bin/sh
#this script should show wifi signal and hint wifi name yada yada

#net=$(nmcli --fields IN-USE,SSID,BARS d wifi list | grep \*)
#nmcli --fields IN-USE,BARS d wifi list | grep \*

#Esta es la que va pero falta mejorarla
#net=$(iwconfig wlp1s0 | grep -E ESSID'|'Signal)

if [ $(wifi | sed s/[[:space:]]//g) = "wifi=on" ]; then
	icon=""
else
	icon="睊"
fi

printf "%s \\n" "$icon"

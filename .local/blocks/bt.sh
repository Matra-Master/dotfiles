#!/bin/sh
#This script shows the bluetooth indicator on dwmblocks using a dmenu-bluetooth script
if $(bluetoothctl show | grep -q "Powered: yes"); then
	bt=""
else
	bt=""
fi

printf "%s" "$bt"

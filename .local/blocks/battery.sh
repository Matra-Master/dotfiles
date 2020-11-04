#!/bin/sh
read -r capacity </sys/class/power_supply/BAT0/capacity

charger=$(acpi -a| sed s/["Adapter 0: "]//g)


if [ $capacity -gt "70" ]; then
	icon=""
elif [ $capacity -lt "30" ]; then
	icon=""
else
	icon=""
fi

#if [ $capacity -gt "94" ]; then
#	icon=""
#fi

[ $capacity -gt "94" ] && icon=""

#if [ $charger = "on-lin" ]; then
#	icon="ﮣ"	#better adding of icon for charging
#fi
[ $charger = "on-lin" ] && icon="ﮣ"	#better adding of icon for charging

#echo "$icon $capacity%"
printf "%s %s \\n" " $icon" "$capacity%"

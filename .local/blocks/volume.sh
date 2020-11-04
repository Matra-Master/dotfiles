#!/bin/sh

volstat=$(pactl list sinks | grep '^[[:space:]]Volume:' | \
    head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')

mute=$(pactl list sinks | grep '^[[:space:]]Mute:' | sed -e s/[[:space:],Mute:]//g)

case $volstat in			#This is a super sexy bar
#	0*)	 dial="/---------"	;;
#	1[0-9])	 dial="-/--------"	;;
#	2*)	 dial="--/-------"	;;
#	3*)	 dial="---/------"	;;
#	4*)	 dial="----/-----"	;;
#	5*)	 dial="-----/----"	;;
#	6*)	 dial="------/---"	;;
#	7*)	 dial="-------/--"	;;
#	8*)	 dial="--------/-"	;;
#	9*)	 dial="---------/"	;;
#	*) 	 dial="//////////"	;;
	[0-2]*)	icon=""	;;
	[3-6]*)	icon=""	;;
	[7-9]*)	icon=""	;;
#	*[0-9][0-9])	icon="";;
esac

#Greater than 100% volume
[ $volstat -gt "99" ] && icon="!"

#Mute wins no matter what
[ $mute = 'ys' ] && icon="婢"

printf "%s %s \\n" "$icon" "$volstat"

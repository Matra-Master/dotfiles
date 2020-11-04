#!/bin/sh

clock=$(date '+%H')
case "$clock" in
	"00") icon="🕛" ;;
	"01") icon="🕐" ;;
	"02") icon="🕑" ;;
	"03") icon="🕒" ;;
	"04") icon="🕓" ;;
	"05") icon="🕔" ;;
	"06") icon="🕕" ;;
	"07") icon="🕖" ;;
	"08") icon="🕗" ;;
	"09") icon="🕘" ;;
	"10") icon="🕙" ;;
	"11") icon="🕚" ;;
	"12") icon="🕛" ;;
	"13") icon="🕐" ;;
	"14") icon="🕑" ;;
	"15") icon="🕒" ;;
	"16") icon="🕓" ;;
	"17") icon="🕔" ;;
	"18") icon="🕕" ;;
	"19") icon="🕖" ;;
	"20") icon="🕗" ;;
	"21") icon="🕘" ;;
	"22") icon="🕙" ;;
	"23") icon="🕚" ;;
	"24") icon="🕛" ;;
esac

date "+ $icon %H:%M"
#echo "$(date '+%H:%M')"

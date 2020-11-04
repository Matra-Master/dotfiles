#!/bin/sh
#This should show the number of packages that are up to update from both the default updates route and from the AUR for yay

updatesarch="$(checkupdates 2> /dev/null | wc -l)"
updatesaur="$(yay -Qum 2> /dev/null | wc -l)"
updates=$(("$updatesarch" + "$updatesaur"))
#icon=""
icon=""
#iconOS=""
#iconAUR=""
#printf " %s %s %s %s \\n"  "$iconOS" "$updatesarch |" "$iconAUR" "$updatesaur"
printf " %s %s \\n" "$icon" "$updates"

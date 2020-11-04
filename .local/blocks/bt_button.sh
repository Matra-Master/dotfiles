#!/usr/bin/env bash
#      _                                  _     _            _              _    _
#   __| |_ __ ___   ___ _ __  _   _      | |__ | |_   _  ___| |_ ___   ___ | |_ | |__
#  / _` | '_ ` _ \ / _ \ '_ \| | | |_____| '_ \| | | | |/ _ \ __/ _ \ / _ \| __|| '_ \
# | (_| | | | | | |  __/ | | | |_| |_____| |_) | | |_| |  __/ || (_) | (_) | |_ | | | |
#  \__,_|_| |_| |_|\___|_| |_|\__,_|     |_.__/|_|\__,_|\___|\__\___/ \___/ \__||_| |_|

#This should be a dwmblocks menu with two posible button pressings
#1) Left mouse button shows a notification with the bluetooth status and the actual connected devices
#3) Right mouse button shoud open dmenu-bluetooth
case "$1" in
	1) twmnc $(dmenu-bluetooth --status) ;;
#	2)
	3) dmenu-bluetooth ;;
esac

sigdwmblocks 8

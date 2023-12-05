#!/bin/env bash

# DEPENDENCY :
# - nitrogen
#
# install :
# sudo dnf install nitrogen

##################################################

# For this script to work, either have the 
# $WALLPAPER environment variable set to a file,
# or provide the file as the second argument to
# this script.
# The first argument should always be an integer
# representing the screen id of the desired
# monitor to display the wallpaper.

# Default wallpaper
file="$WALLPAPER"

# Default monitor
monitor=0

##################################################

if ! [[ -z "$2" ]] && test -f "$2"; then
	file="$2"
fi

if ! test -f "$file"; then
	echo "Wallpaper: file $file not found!"
	exit
fi

if [[ $1 -gt 0 ]]; then
	monitor="$1"
fi

nitrogen --head=$monitor --set-zoom-fill "$file"

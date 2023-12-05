#!/bin/env bash

# DEPENDENCIES :
# - mpv
# - termdown
#
# install : 
# pip3 install termdown && sudo dnf install mpv

##################################################

# Sleep duration, in minutes. If you want to dynamically
# change it, input the new duration as the first argument
# to this script.
sleepduration=30

# Change this to the ambinace sound that should
# be played while sleeping.
sleepmusic="https://youtu.be/XP1O2eWA84s"
# Change this to the music used to wake you up.
wakeupmusic="https://youtu.be/Inz9OOVh7dg"

# You should not have to modify this, but it is pretty
# self explanatory.
sleepvolume=70
wakeupvolume=140

##################################################

if [[ $1 != "" ]]; then
	sleepduration=$1
fi

pidfile="/tmp/dodopid"
mpv --no-video $sleepmusic --volume=$sleepvolume --no-terminal & echo $! > $pidfile
termdown "${sleepduration}mn" -W -e -s

if test -f $pidfile; then
	kill $(head $pidfile)
	rm $pidfile
fi

mpv --no-video $wakeupmusic --volume=$wakeupvolume

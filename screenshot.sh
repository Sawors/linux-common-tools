#!/bin/env bash

# DEPENDENCIES :
# - ImageMagick (should be already present)
# - xclip
#
# install :
# sudo dnf install xclip ImageMagick

##################################################

# Use the --copy argument to copy the image to clipboard.
# If you want a custom file destination, input it as the
# first argument.

# Default location to save the screenshot
file="$HOME/Pictures/$(date '+%d-%m-%Y_%H:%M:%S').png"

##################################################

if ! [[ -z "$1" ]] && ! [[ "$1" == "--"* ]]; then
	file=$1
fi

import $file
echo "image saved as $file"

if [[ "--copy" =~ "$@" ]]; then
	xclip -selection clipboard -target image/png -i $file
fi
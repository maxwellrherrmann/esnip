#!/bin/bash

# Make sure to change the target directory for the screenshot
tempdir=/home/${USER}/Pictures/Screenshots/tmp/

# Give random unique file name
filename=${tempdir}$(echo $RANDOM | md5sum | head -c 10).png

# Calls escrotum with -s to select region
escrotum -s ${filename}

# Opens the file in feh
feh ${filename} 

# Deletes file (it's intended to be temporary)
rm ${filename}

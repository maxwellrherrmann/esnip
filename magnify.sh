#!/bin/bash

# Give random unique file name
filename=/tmp/$(echo $RANDOM | md5sum | head -c 10).png

# Calls escrotum with -s to select region
escrotum -s ${filename}

# Opens the file in feh
feh ${filename} 

# Deletes file (it's intended to be temporary)
rm ${filename}

#!/bin/bash

# Checks to see that escrotum and feh are installed
command -v escrotum >/dev/null 2>&1 || { echo >&2 "escrotum not found.  Aborting."; exit 1; }
command -v feh >/dev/null 2>&1 || { echo >&2 "feh not found.  Aborting."; exit 1; }

# Give random unique file name
filename=/tmp/$(echo $RANDOM | md5sum | head -c 10).png

# Calls escrotum with -s to select region
escrotum -s ${filename}

# Opens the file in feh
feh ${filename} 

# Deletes file (it's intended to be temporary)
rm ${filename}

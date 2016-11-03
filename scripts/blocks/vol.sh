#!/bin/bash
# a block that displays volume information

# grab volume and strip of [%]
vol=$(amixer sget Master | grep 'Front Left:' | awk '{print $5}' | \
sed 's/\[//g;s/\]//g;s/\%//g')

# grab mute status and strip of []
state=$(amixer sget Master | grep 'Front Left:' | awk '{print $6}' | \
sed 's/[^a-z]//g')

# check for mute
if [[ $state == "on" ]]; then
    output="  ${vol}"
else
    output="  ${vol}"
fi

echo "$output"

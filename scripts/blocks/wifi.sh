#!/bin/bash
# a block for displaying wifi info

# grab wifi status and run through sed
wifi="$(iwconfig wlan0 | sed -n 's/"//g; s/\s*$//g; s/.*ESSID://p')"

# check if wifi isn't connected
if [ "$wifi" == "off/any" ]; then
    wifi_output="not connected"
else
    wifi_output="  ${wifi}"
fi

echo "$wifi_output"

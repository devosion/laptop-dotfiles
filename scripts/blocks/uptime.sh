#!/bin/bash
# created 10/17/16
# a block that displays uptime

echo "$(awk '{printf("%d:%02d:%02d",($1/60/60/24),($1/60/60%24),($1/60%60))}' /proc/uptime)"

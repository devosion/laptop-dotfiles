#!/bin/bash
# created 10/17/16
# a block that displays internal temperature

# grab temp 1 from sensors -f and parse
temp1=$(sensors -f | grep temp1 | awk '{print $2}' | sed 's/+//g;s/°F//g;' |\
awk -F'.' '{print $1}')

# grab temp 2 from sensors -f and parse
temp2=$(sensors -f | grep temp2 | awk '{print $2}' | sed 's/+//g;s/°F//g;' |\
awk -F'.' '{print $1}') 

# set display threshold in fahrenheit
#threshold=150

# check for lowest temp
if [[ $temp1 -lt $temp2 ]]; then
    testtemp="$temp1"
elif [[ $temp2 -lt $temp1 ]]; then
    testtemp="$temp2"
elif [[ $temp1 -eq $temp2 ]]; then
    testtemp="$temp1"
fi

# check for temp range
#if [[ $testtemp -ge 110 ]]; then
#    tempoutput="$testtemp" 
#else
#    tempoutput=""
#fi

echo "$testtemp°F"



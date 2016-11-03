#!/bin/bash
# revised 10/7/16
# lemon bar script that displays a clock, workspace info...

# foreground lemon bar color definitions
fg_white1="%{F#f7f7f7}"
fg_white2="%{F#a3b5c2}"

fg_blue1="%{F#0d89e7}"

# define the clock
Clock() {

    echo "$($HOME/scripts/blocks/clock.sh)"
}

# grab battery information
Battery() {

    echo "$($HOME/scripts/blocks/bat.sh)"
}

# grab volume information
Volume() {

    echo "$($HOME/scripts/blocks/vol.sh)"
}

# grab wifi info
Wifi() {
  
    echo "$($HOME/scripts/blocks/wifi.sh)"
}

# set current workspace
Workspace() {

    workspaces=$(i3-msg -t get_workspaces)

    echo $($HOME/scripts/lemonbar/workspaces.py "$workspaces")

}

trap 'kill $pid' 36
trap 'exit' SIGINT

# print line for lbar; runs indefinitely
while true; do

    lbar_output="%{l}${fg_white2}     $(Wifi)     $(Volume)     $(Battery)%{c}$(Workspace)%{r}${fg_white2}$(Clock)%{F-}%{B-}     "

    # output to lemonbar
    echo "$lbar_output"

    # wait 1 second before running loop again     
    sleep 1
    wait

done

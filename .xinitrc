#!/bin/sh
# ~/.xinitrc

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# environment variables
export LANG=en_US.UTF-8

# define Xresources
userresources=$HOME/.Xresources

# merge with whats available
if [ -f "$userresources" ]; then
	xrdb -merge " $userresources"
fi

# Applications and etc. launchers 
# commands for programs / scripts to run before wm / de is started

# run feh and set background
. ~/.fehbg &

# run random wallpaper script
#. ~/scripts/wallpaper-changer/wp-changer

# start xscreensaver
/usr/bin/xscreensaver -no-splash &

# load .Xresources
xrdb -load ~/.Xresources &

# run urxvt daemon
urxvtd -q -o -f

### start the wm / de
### loading the wm / de should occur last

## run openbox and related applications and configurations
# start compton config for openbox
#compton -bG --config ~/.config/compton.ob.conf
# start openbox 
#exec openbox-session
## end openbox setup


## run i3 and related applications and configurations
# start compton config for openbox
compton -bG --config ~/.config/compton/compton.conf
# start openbox 
exec i3
## end openbox setup

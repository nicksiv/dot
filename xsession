#!/bin/bash
exec xscreensaver --no-splash &
#exec feh --bg-scale /usr/share/backgrounds/debian.png &
exec feh --bg-scale ~/indictus/archive/wallpapers/Tar_46.jpg &
exec xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1 &
exec setxkbmap "us,gr" -option "grp:shifts_toggle" &
exec xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Natural Scrolling Enabled" 1 &
exec nextcloud &
exec picom &
exec cwm


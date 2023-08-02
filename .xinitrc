#!/bin/bash

# Soft-block bluetooth devices
rfkill block bluetooth &

# Set monitor resolutions in case of
# any external monitor connection
set_monitor_resolutions & # alias: sm

# Set keyboard layout
setxkbmap tr alt &

xfce4-clipman &

# Start desktop notification server
dunst &

# Start Qtile WM
qtile start

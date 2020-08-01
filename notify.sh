#!/bin/bash

# dbus variables are required to run libnotify from chron
#
# https://unix.stackexchange.com/a/111190
#
if [ -r "$HOME/.dbus/Xdbus" ]; then
      . "$HOME/.dbus/Xdbus"
fi

notify-send 'Breath' 'Dont forget to breath. Breathing is important' --icon=dialog-information

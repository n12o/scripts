#!/bin/bash

if [ -r "$HOME/.dbus/Xdbus" ]; then
      . "$HOME/.dbus/Xdbus"
fi

notify-send 'Breath' 'Dont forget to breath. Breathing is important' --icon=dialog-information

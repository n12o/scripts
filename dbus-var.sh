#!/bin/sh
#
# This is required because the script is invoked by cron. Dbus information
# is stored in a file by the following script when a user logs in. Connect
# it to your autostart mechanism of choice.
#
# explanation: https://unix.stackexchange.com/a/111190
#
# original answer: https://unix.stackexchange.com/questions/84437/how-do-i-make-my-laptop-sleep-when-it-reaches-some-low-battery-threshold/84438#84438
#
touch $HOME/.dbus/Xdbus
chmod 600 $HOME/.dbus/Xdbus
env | grep DBUS_SESSION_BUS_ADDRESS > $HOME/.dbus/Xdbus
echo 'export DBUS_SESSION_BUS_ADDRESS' >> $HOME/.dbus/Xdbus

exit 0


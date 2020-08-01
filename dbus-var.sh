#!/bin/sh
#
# This is required because the script is invoked by cron. Dbus information
# is stored in a file by the following script when a user logs in. Connect
# it to your autostart mechanism of choice.
#
touch $HOME/.dbus/Xdbus
chmod 600 $HOME/.dbus/Xdbus
env | grep DBUS_SESSION_BUS_ADDRESS > $HOME/.dbus/Xdbus
echo 'export DBUS_SESSION_BUS_ADDRESS' >> $HOME/.dbus/Xdbus

exit 0


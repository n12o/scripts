#!/usr/bin/bash
#
# source url: https://wiki.archlinux.org/index.php/Migrate_installation_to_new_hardware#List_of_installed_packages
# 
pacman -Qqen > $HOME/pkglist.txt
pacman -Qqem > $HOME/pkglist_aur.txt

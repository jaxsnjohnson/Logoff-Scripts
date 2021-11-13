#!/bin/bash

TEXT_RESET='\e[0m'
TEXT_YELLOW='\e[0;33m'
TEXT_RED_B='\e[1;31m'

sudo apt clean
echo -e $TEXT_YELLOW
echo 'APT clean finished...'
echo -e $TEXT_RESET

sudo apt autoremove
echo -e $TEXT_YELLOW
echo 'APT auto removing finished...'
echo -e $TEXT_RESET

sudo apt-get --fix-broken install
echo -e $TEXT_YELLOW
echo 'APT fixing broken packages finished...'
echo -e $TEXT_RESET

sudo apt update -m
echo -e $TEXT_YELLOW
echo 'APT update finished...'
echo -e $TEXT_RESET

sudo dpkg --configure -a
echo -e $TEXT_YELLOW
echo 'DPKG configuration finished...'
echo -e $TEXT_RESET

sudo apt install -f
echo -e $TEXT_YELLOW
echo 'APT forced installed finished...'
echo -e $TEXT_RESET

sudo apt full-upgrade
echo -e $TEXT_YELLOW
echo 'APT Full Update finished...'
echo -e $TEXT_RESET

flatpak update
echo -e $TEXT_YELLOW
echo 'Flatpak update finished...'
echo -e $TEXT_RESET

flatpak update --appstream
echo -e $TEXT_YELLOW
echo 'Flatpak Appstream update finished...'
echo -e $TEXT_RESET

flatpak update --user
echo -e $TEXT_YELLOW
echo 'Flatpak User Upstream finished...'
echo -e $TEXT_RESET

sudo flatpak repair --system
echo -e $TEXT_YELLOW
echo 'Repairing System Flatpak finished...'
echo -e $TEXT_RESET

flatpak update
echo -e $TEXT_YELLOW
echo 'Flatpak Update finished...'
echo -e $TEXT_RESET

flatpak uninstall --unused
echo -e $TEXT_YELLOW
echo 'Uninstalled Unused Flatpak finished...'
echo -e $TEXT_RESET

if [ -f /var/run/reboot-required ]; then
    echo -e $TEXT_RED_B
    echo 'Reboot required!'
    echo -e $TEXT_RESET
fi

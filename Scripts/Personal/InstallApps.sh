#!/bin/bash

echo "Install base personal environment..."

pacman -S rofi nemo nemo-fileroller nemo-image-converter nemo-preview nemo-seahorse nemo-terminal maim lxappearance picom network-manager-applet imwheel dmenu dunst lxqt-policykit nitrogen feh redshift terminator fish fontforge ranger --noconfirm

sleep 2

yay -S polybar brave font-manager

sleep 2

echo "Done!"
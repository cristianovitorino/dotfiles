#!/bin/bash

echo "Install base personal environment..."

pacman -S rofi nemo nemo-fileroller nemo-seahorse nemo-image-converter nemo-preview nemo-terminal p7zip maim lxappearance picom network-manager-applet imwheel dmenu dunst nitrogen feh xreader qt5ct kvantum-qt5 redshift terminator fish fontforge ranger w3m polkit-gnome --noconfirm

sleep 2

yay -S polybar brave font-manager adwaita-qt

sleep 2

echo "Done!"

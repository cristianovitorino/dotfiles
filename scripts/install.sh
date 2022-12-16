#!/bin/bash

# Ubuntu
echo "Installing required software..."
sleep 2

# Base
sudo apt install -y font-manager polybar rofi nautilus-image-converter nautilus-script-manager nautilus-scripts-manager nautilus-admin gnome-sushi p7zip p7zip-full maim lxappearance picom nm-tray polkitd policykit-desktop-privileges imwheel suckless-tools dunst nitrogen pasystray pavucontrol feh w3m adwaita-icon-theme-full adwaita-qt solaar qt5-style-kvantum qt5-style-kvantum-themes fonts-cascadia-code i3-gaps

# Apply Kvantum for QT applications
touch ~/.profile && echo "export QT_STYLE_OVERRIDE=kvantum" >> ~/.profile

sleep 2

echo "...done!"

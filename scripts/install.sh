#!/bin/bash

# Ubuntu
echo "Installing required software..."
sleep 2

# Base
sudo apt install -y i3 font-manager polybar rofi nautilus-image-converter seahorse-nautilus nautilus-script-manager nautilus-scripts-manager nautilus-admin nautilus-font-manager nautilus-extension-gnome-console nautilus-extension-gnome-terminal gnome-sushi p7zip p7zip-full maim lxappearance picom nm-tray polkitd policykit-desktop-privileges imwheel suckless-tools dunst nitrogen pasystray pavucontrol feh terminator w3m adwaita-icon-theme-full adwaita-qt flameshot solaar qt5-style-kvantum qt5-style-kvantum-themes

# Apply Kvantum for QT applications
touch ~/.profile && echo "export QT_STYLE_OVERRIDE=kvantum" >> ~/.profile

sleep 2

echo "...done!"

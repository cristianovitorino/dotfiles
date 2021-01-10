#!/bin/bash

# Fedora

echo "Install required software..."

# Base
sudo dnf install -y polybar rofi nautilus-image-converter seahorse-nautilus sushi p7zip maim lxappearance picom network-manager-applet imwheel dmenu dunst nitrogen pavucontrol feh terminator w3m adwaita-qt flameshot solaar kvantum

# Apply Kvantum for QT applications
touch ~/.profile && echo "export QT_STYLE_OVERRIDE=kvantum" >> ~/.profile

# i3-Gaps
sudo dnf copr enable fuhrmann/i3-gaps
sudo dnf install -y i3-gaps

# Font Manager
sudo dnf copr enable jerrycasiano/FontManager
sudo dnf install -y font-manager

sleep 1

echo "...done!"

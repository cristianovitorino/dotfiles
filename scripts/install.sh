#!/bin/bash

# Fedora

echo "Installing required software..."

sleep 2

# Base
sudo dnf install -y google-noto-sans-fonts adobe-source-sans-pro-fonts polybar rofi nautilus-image-converter seahorse-nautilus sushi p7zip maim lxappearance picom network-manager-applet imwheel dmenu dunst nitrogen pavucontrol feh terminator w3m adwaita-qt flameshot solaar kvantum

# Apply Kvantum for QT applications
touch ~/.profile && echo "export QT_STYLE_OVERRIDE=kvantum" >> ~/.profile

# i3-Gaps
sudo dnf -y copr enable fuhrmann/i3-gaps
sudo dnf install -y i3-gaps

# Font Manager
sudo dnf -y copr enable jerrycasiano/FontManager
sudo dnf install -y font-manager

sleep 2

echo "...done!"

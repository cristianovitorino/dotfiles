#!/bin/bash

echo "Check if directories already exists..."

if [[ -d "$HOME/Scripts" ]]
then
    echo "'$HOME/Scripts' directory already exists. Proceeding..."
else
    echo "'$HOME/Scripts' directory doesn't exist. Creating..."
    mkdir "$HOME/Scripts"
fi

sleep 1

if [[ -d "$HOME/.config" ]]
then
    echo "'$HOME/.config' directory already exists. Proceeding..."
else
    echo "'$HOME/.config' directory doesn't exist. Creating..."
    mkdir "$HOME/.config"
fi

sleep 1

if [[ -d "$HOME/.config/i3" ]]
then
    echo "'$HOME/.config/i3' directory already exists. Proceeding..."
else
    echo "'$HOME/.config/i3' directory doesn't exist. Creating..."
    mkdir "$HOME/.config/i3"
fi

sleep 1

if [[ -d "$HOME/.config/polybar" ]]
then
    echo "'$HOME/.config/polybar' directory already exists. Proceeding..."
else
    echo "'$HOME/.config/polybar' directory doesn't exist. Creating..."
    mkdir "$HOME/.config/polybar"
fi

sleep 1

if [[ -d "$HOME/.config/redshift" ]]
then
    echo "'$HOME/.config/redshift' directory already exists. Proceeding..."
else
    echo "'$HOME/.config/redshift' directory doesn't exist. Creating..."
    mkdir "$HOME/.config/redshift"
fi

sleep 1

if [[ -d "$HOME/.config/rofi" ]]
then
    echo "'$HOME/.config/rofi' directory already exists. Proceeding..."
else
    echo "'$HOME/.config/rofi' directory doesn't exist. Creating..."
    mkdir "$HOME/.config/rofi"
fi

sleep 1

if [[ -d "$HOME/.config/rofi/themes" ]]
then
    echo "'$HOME/.config/rofi/themes' directory already exists. Proceeding..."
else
    echo "'$HOME/.config/rofi/themes' directory doesn't exist. Creating..."
    mkdir "$HOME/.config/rofi/themes"
fi

sleep 1

if [[ -d "$HOME/.config/dunst" ]]
then
    echo "'$HOME/.config/dunst' directory already exists. Proceeding..."
else
    echo "'$HOME/.config/dunst' directory doesn't exist. Creating..."
    mkdir "$HOME/.config/dunst"
fi

sleep 1

if [[ -d "$HOME/.config/ranger" ]]
then
    echo "'$HOME/.config/ranger' directory already exists. Proceeding..."
else
    echo "'$HOME/.config/ranger' directory doesn't exist. Creating..."
    mkdir "$HOME/.config/ranger"
fi

sleep 1

echo "Everything is in check, copying files..."

cd ..

cd ..

cp -f .config/i3/config $HOME/.config/i3/
cp -f .config/polybar/i3-polybar.conf $HOME/.config/polybar/
cp -f .config/redshift/redshift.conf $HOME/.config/redshift/
cp -f .config/picom.conf $HOME/.config/
cp -f .Xresources $HOME/
cp -f .Xmodmap $HOME/
cp -f .bash_profile $HOME/
cp -f .bashrc $HOME/
cp -f .stalonetrayrc $HOME/
cp -f .config/rofi/themes/vitorino.rasi $HOME/.config/rofi/themes/
cp -f .config/rofi/config.rasi $HOME/.config/rofi/
cp -f .config/dunst/dunstrc $HOME/.config/dunst/

cp -f -avr .config/ranger/ $HOME/.config/

cp -f -avr Scripts/Personal/ $HOME/Scripts/
cp -f -avr Scripts/Polybar/ $HOME/Scripts/

sleep 2

echo "Done!"

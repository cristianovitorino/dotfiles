#!/bin/bash

echo "Check if directories already exists..."

if [[ -d "$HOME/Development/dotfiles" ]]
then
    echo "'$HOME/Development/dotfiles' directory already exists. Proceeding..."
else
    echo "'$HOME/Development/dotfiles' directory doesn't exist. Creating..."
    mkdir "$HOME/Development/dotfiles"
fi

sleep 1

if [[ -d "$HOME/Development/dotfiles/Scripts" ]]
then
    echo "'$HOME/Development/dotfiles/Scripts' directory already exists. Proceeding..."
else
    echo "'$HOME/Development/dotfiles/Scripts' directory doesn't exist. Creating..."
    mkdir "$HOME/Development/dotfiles/Scripts"
fi

sleep 1

if [[ -d "$HOME/Development/dotfiles/.config" ]]
then
    echo "'$HOME/Development/dotfiles/.config' directory already exists. Proceeding..."
else
    echo "'$HOME/Development/dotfiles/.config' directory doesn't exist. Creating..."
    mkdir "$HOME/Development/dotfiles/.config"
fi

sleep 1

if [[ -d "$HOME/Development/dotfiles/.config/i3" ]]
then
    echo "'$HOME/Development/dotfiles/.config/i3' directory already exists. Proceeding..."
else
    echo "'$HOME/Development/dotfiles/.config/i3' directory doesn't exist. Creating..."
    mkdir "$HOME/Development/dotfiles/.config/i3"
fi

sleep 1

if [[ -d "$HOME/Development/dotfiles/.config/polybar" ]]
then
    echo "'$HOME/Development/dotfiles/.config/polybar' directory already exists. Proceeding..."
else
    echo "'$HOME/Development/dotfiles/.config/polybar' directory doesn't exist. Creating..."
    mkdir "$HOME/Development/dotfiles/.config/polybar"
fi

sleep 1

if [[ -d "$HOME/Development/dotfiles/.config/redshift" ]]
then
    echo "'$HOME/Development/dotfiles/.config/redshift' directory already exists. Proceeding..."
else
    echo "'$HOME/Development/dotfiles/.config/redshift' directory doesn't exist. Creating..."
    mkdir "$HOME/Development/dotfiles/.config/redshift"
fi

sleep 1

if [[ -d "$HOME/Development/dotfiles/.config/rofi" ]]
then
    echo "'$HOME/Development/dotfiles/.config/rofi' directory already exists. Proceeding..."
else
    echo "'$HOME/Development/dotfiles/.config/rofi' directory doesn't exist. Creating..."
    mkdir "$HOME/Development/dotfiles/.config/rofi"
fi

sleep 1

if [[ -d "$HOME/Development/dotfiles/.config/rofi/themes" ]]
then
    echo "'$HOME/Development/dotfiles/.config/rofi/themes' directory already exists. Proceeding..."
else
    echo "'$HOME/Development/dotfiles/.config/rofi/themes' directory doesn't exist. Creating..."
    mkdir "$HOME/Development/dotfiles/.config/rofi/themes"
fi

sleep 1

if [[ -d "$HOME/Development/dotfiles/.config/dunst" ]]
then
    echo "'$HOME/Development/dotfiles/.config/dunst' directory already exists. Proceeding..."
else
    echo "'$HOME/Development/dotfiles/.config/dunst' directory doesn't exist. Creating..."
    mkdir "$HOME/Development/dotfiles/.config/dunst"
fi

sleep 1

if [[ -d "$HOME/Development/dotfiles/.config/ranger" ]]
then
    echo "'$HOME/Development/dotfiles/.config/ranger' directory already exists. Proceeding..."
else
    echo "'$HOME/Development/dotfiles/.config/ranger' directory doesn't exist. Creating..."
    mkdir "$HOME/Development/dotfiles/.config/ranger"
fi

sleep 1

echo "Everything is in check, copying files..."

cp -f $HOME/.config/i3/config $HOME/Development/dotfiles/.config/i3/
cp -f $HOME/.config/redshift/redshift.conf $HOME/Development/dotfiles/.config/redshift/
cp -f $HOME/.config/picom.conf $HOME/Development/dotfiles/.config/
cp -f $HOME/.Xresources $HOME/Development/dotfiles/
cp -f $HOME/.Xmodmap $HOME/Development/dotfiles/
cp -f $HOME/.bash_profile $HOME/Development/dotfiles/
cp -f $HOME/.bashrc $HOME/Development/dotfiles/
cp -f $HOME/.stalonetrayrc $HOME/Development/dotfiles/
cp -f $HOME/.config/rofi/themes/vitorino.rasi $HOME/Development/dotfiles/.config/rofi/themes/
cp -f $HOME/.config/rofi/config.rasi $HOME/Development/dotfiles/.config/rofi/
cp -f $HOME/.config/dunst/dunstrc $HOME/Development/dotfiles/.config/dunst/

cp -f -avr $HOME/Scripts/ $HOME/Development/dotfiles/
cp -f -avr $HOME/.config/ranger/ $HOME/Development/dotfiles/.config/
cp -f -avr $HOME/.config/polybar/ $HOME/Development/dotfiles/.config/

sleep 2

echo "Done!"
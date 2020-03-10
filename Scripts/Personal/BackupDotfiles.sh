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

yes | cp $HOME/.config/i3/config $HOME/Development/dotfiles/.config/i3/
yes | cp $HOME/.config/polybar/i3-polybar.conf $HOME/Development/dotfiles/.config/polybar/
yes | cp $HOME/.config/redshift/redshift.conf $HOME/Development/dotfiles/.config/redshift/
yes | cp $HOME/.config/picom.conf $HOME/Development/dotfiles/.config/
yes | cp $HOME/.Xresources $HOME/Development/dotfiles/
yes | cp $HOME/.Xmodmap $HOME/Development/dotfiles/
yes | cp $HOME/.bash_profile $HOME/Development/dotfiles/
yes | cp $HOME/.bashrc $HOME/Development/dotfiles/
yes | cp $HOME/.config/rofi/themes/vitorino.rasi $HOME/Development/dotfiles/.config/rofi/themes/
yes | cp $HOME/.config/rofi/config.rasi $HOME/Development/dotfiles/.config/rofi/
yes | cp $HOME/.config/dunst/dunstrc $HOME/Development/dotfiles/.config/dunst/

yes | cp -r $HOME/.config/ranger/ $HOME/Development/dotfiles/.config/

yes | cp -r $HOME/Scripts/Personal $HOME/Development/dotfiles/Scripts/
yes | cp -r $HOME/Scripts/Polybar/ $HOME/Development/dotfiles/Scripts/

sleep 2

echo "Done!"
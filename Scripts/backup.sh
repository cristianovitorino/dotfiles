#!/bin/bash

echo "Check if the required directories already exists..."

if [[ -d "$HOME/scripts" ]]
then
    echo "'$HOME/scripts' directory already exists. Proceeding..."
else
    echo "'$HOME/scripts' directory doesn't exist. Creating..."
    mkdir "$HOME/scripts"
fi

sleep 1

if [[ -d "$HOME/scripts/.config" ]]
then
    echo "'$HOME/scripts/.config' directory already exists. Proceeding..."
else
    echo "'$HOME/scripts/.config' directory doesn't exist. Creating..."
    mkdir "$HOME/scripts/.config"
fi

sleep 1

echo "...done!"

sleep 1

echo "Backing up files..."

cp -f $HOME/.config/picom.conf $HOME/scripts/.config/
cp -f $HOME/.Xmodmap $HOME/scripts/
cp -f $HOME/.bash_profile $HOME/scripts/
cp -f $HOME/.bashrc $HOME/scripts/
cp -f $HOME/.hidden $HOME/scripts/
cp -f -avr $HOME/.config/i3 $HOME/scripts/.config/
cp -f -avr $HOME/.config/rofi $HOME/scripts/.config/
cp -f -avr $HOME/.config/dunst $HOME/scripts/.config/
cp -f -avr $HOME/.config/polybar $HOME/scripts/.config/
cp -f -avr $HOME/scripts/ $HOME/Tresors/Backup/Linux/

sleep 2

echo "...done!"
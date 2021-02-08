#!/bin/bash

echo "Check if the required directories already exists..."

if [[ -d "$HOME/Git/dotfiles" ]]
then
    echo "'$HOME/Git/dotfiles' directory already exists. Proceeding..."
else
    echo "'$HOME/Git/dotfiles' directory doesn't exist. Creating..."
    mkdir "$HOME/Git/dotfiles"
fi

sleep 1

if [[ -d "$HOME/Git/dotfiles/.config" ]]
then
    echo "'$HOME/Git/dotfiles/.config' directory already exists. Proceeding..."
else
    echo "'$HOME/Git/dotfiles/.config' directory doesn't exist. Creating..."
    mkdir "$HOME/Git/dotfiles/.config"
fi

sleep 1

echo "...done!"

sleep 1

echo "Backing up files..."

cp -f $HOME/.config/picom.conf $HOME/Git/dotfiles/.config/
cp -f $HOME/.Xmodmap $HOME/Git/dotfiles/
cp -f $HOME/.bash_profile $HOME/Git/dotfiles/
cp -f $HOME/.bashrc $HOME/Git/dotfiles/
cp -f $HOME/.hidden $HOME/Git/dotfiles/
cp -f -avr $HOME/scripts $HOME/Git/dotfiles/
cp -f -avr $HOME/.config/i3 $HOME/Git/dotfiles/.config/
cp -f -avr $HOME/.config/rofi $HOME/Git/dotfiles/.config/
cp -f -avr $HOME/.config/dunst $HOME/Git/dotfiles/.config/
cp -f -avr $HOME/.config/polybar $HOME/Git/dotfiles/.config/
cp -f -avr $HOME/Git/dotfiles/ $HOME/Tresors/Backup/Linux/

sleep 2

echo "...done!"
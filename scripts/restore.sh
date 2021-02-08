#!/bin/bash

echo "Check if the main directories already exists..."

if [[ -d "$HOME/.config" ]]
then
    echo "'$HOME/.config' directory already exists. Proceeding..."
else
    echo "'$HOME/.config' directory doesn't exist. Creating..."
    mkdir "$HOME/.config"
fi

sleep 1

if [[ -d "$HOME/scripts" ]]
then
    echo "'$HOME/scripts' directory already exists. Proceeding..."
else
    echo "'$HOME/scripts' directory doesn't exist. Creating..."
    mkdir "$HOME/scripts"
fi

sleep 1

echo "...everything is in check, copying files..."

cd $HOME/scripts/dotfiles

cp -f .config/picom.conf $HOME/.config/
cp -f .Xmodmap $HOME/
cp -f .bash_profile $HOME/
cp -f .bashrc $HOME/
cp -f .hidden $HOME/
cp -f -avr .config/ $HOME/
cp -f -avr scripts/ $HOME/

sleep 2

echo "...done!"

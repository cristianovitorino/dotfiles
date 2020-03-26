#!/bin/sh

if ! updates=$(echo "n" | flatpak update 2> /dev/null | wc -l ); then
    updates=0
fi

updates=$((updates - 5))

if [ "$updates" -gt 0 ]; then
    echo "$updates     "
    notify-send -u normal "You have mew Flatpak updates!"
else
    echo ""
fi
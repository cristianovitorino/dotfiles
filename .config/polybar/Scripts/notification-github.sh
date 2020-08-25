#!/bin/bash

USER="estatra"
TOKEN="9d69469b6fedc2a2a4fc696c183686f1b0a5e066"

notifications=$(echo "user = \"$USER:$TOKEN\"" | curl -sf -K- https://api.github.com/notifications | jq ".[].unread" | grep -c true)

if [ "$notifications" -gt 0 ]; then
    echo "$notifications      " && mpg123 $HOME/Music/SFX/Store_Door_Chime-Mike_Koenig-570742973.mp3 && notify-send -i $HOME/Scripts/Polybar/github.png -u normal "GitHub" "You have ($notifications) new notifications"
else
    echo ""
fi

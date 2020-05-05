#!/bin/bash

USER="cristianovitorino"
TOKEN="13fedc82b96b195027e376fc34e0f952b53408a3"

notifications=$(echo "user = \"$USER:$TOKEN\"" | curl -sf -K- https://api.github.com/notifications | jq ".[].unread" | grep -c true)

if [ "$notifications" -gt 0 ]; then
    echo "$notifications    " && mpg123 $HOME/Music/SFX/Store_Door_Chime-Mike_Koenig-570742973.mp3 && notify-send -i $HOME/Scripts/Polybar/github.png -u normal "GitHub" "You have ($notifications) new notifications"
else
    echo ""
fi

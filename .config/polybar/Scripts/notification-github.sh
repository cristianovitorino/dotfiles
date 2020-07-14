#!/bin/bash

USER="cristianovitorino"
TOKEN="d8620e83f270add068a8d99bd5695ad7e61d6038"

notifications=$(echo "user = \"$USER:$TOKEN\"" | curl -sf -K- https://api.github.com/notifications | jq ".[].unread" | grep -c true)

if [ "$notifications" -gt 0 ]; then
    echo "$notifications    " && mpg123 $HOME/Music/SFX/Store_Door_Chime-Mike_Koenig-570742973.mp3 && notify-send -i $HOME/Scripts/Polybar/github.png -u normal "GitHub" "You have ($notifications) new notifications"
else
    echo ""
fi

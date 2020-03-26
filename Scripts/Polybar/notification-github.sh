#!/bin/bash

USER="cristianovitorino"
TOKEN="72140573157a5cb9e035c3671c9d781ee58bf94c"

notifications=$(echo "user = \"$USER:$TOKEN\"" | curl -sf -K- https://api.github.com/notifications | jq ".[].unread" | grep -c true)

if [ "$notifications" -gt 0 ]; then
    echo "$notifications     "
else
    echo ""
fi
#!/usr/bin/env sh

# Terminate already running bar instances
killall polybar

sleep 1

# Wait until the processes have been shut down
#while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch
polybar -c $HOME/.config/polybar/polybar.conf main &

#echo "Bar launched..."

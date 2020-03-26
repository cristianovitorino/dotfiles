#!/bin/bash

#                                             
#                                             
#   _____     ___   __  __  __     __   _ __  
#  /\ '__`\  / __`\/\ \/\ \/\ \  /'__`\/\`'__\
#  \ \ \L\ \/\ \L\ \ \ \_/ \_/ \/\  __/\ \ \/ 
#   \ \ ,__/\ \____/\ \___x___/'\ \____\\ \_\ 
#    \ \ \/  \/___/  \/__//__/   \/____/ \/_/ 
#     \ \_\                                   
#      \/_/                                   
#  
#                                Version 1.0.0
#  
#                           Cristiano Vitorino
#         https://github.com/cristianovitorino
#  

# Simple script to handle a DIY shutdown menu. When run you should see a bunch of options (shutdown, reboot etc.)
#
# Requirements:
# - rofi
# - systemd, but you can replace the commands for OpenRC or anything else
#
# Instructions:
# - Save this file as power.sh or anything
# - Give it exec priviledge, or chmod +x /path/to/power.sh
# - Run it

#chosen=$(echo -e "[Cancel]\nLogout\nShutdown\nReboot\nSuspend\nHibernate\nHybrid-sleep\nSuspend-then-hibernate" | rofi -dmenu -i)
chosen=$(echo -e "Lock\nLogout\nShutdown\nReboot\nSuspend\nHibernate\n[Cancel]" | rofi -dmenu -location 3 -xoffset -12 -yoffset 60 -lines 7 -width 11 -p "Poweroff" -i)
# Info about some states are available here:
# https://www.freedesktop.org/software/systemd/man/systemd-sleep.conf.html#Description

if [[ $chosen = "Lock" ]]; then
	~/scripts/lock.sh
elif [[ $chosen = "Logout" ]]; then
	openbox --exit | bspc quit | i3-msg exit
elif [[ $chosen = "Shutdown" ]]; then
	systemctl poweroff
elif [[ $chosen = "Reboot" ]]; then
	systemctl reboot
elif [[ $chosen = "Suspend" ]]; then
	systemctl suspend
elif [[ $chosen = "Hibernate" ]]; then
	systemctl hibernate
#elif [[ $chosen = "Hybrid-sleep" ]]; then
#	systemctl hibernate
#elif [[ $chosen = "Suspend-then-hibernate" ]]; then
#	systemctl suspend-then-hibernate
fi

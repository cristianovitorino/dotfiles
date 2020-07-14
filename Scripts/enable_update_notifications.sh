#!/usr/bin/env bash

# Enable update notifications
sed -i '194 s/^;*//' ~/.config/polybar/polybar.conf
sed -i '202 s/^;*//' ~/.config/polybar/polybar.conf

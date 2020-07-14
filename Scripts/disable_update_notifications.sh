#!/usr/bin/env bash

# Disable update notifications
sed -i '194 s/^/;/' ~/.config/polybar/polybar.conf
sed -i '202 s/^/;/' ~/.config/polybar/polybar.conf
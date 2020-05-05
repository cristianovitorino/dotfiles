#!/bin/bash

# big windows
#exec maim -st 9999999 | convert - \( +clone -background black -shadow 12x30+30+30 \) +swap -background none -layers merge +repage ~/Pictures/Screenshots/$(date +%A-%d-%B-%Y_%H-%M-%S).png

# medium shadow
#exec maim -st 9999999 | convert - \( +clone  -background black -shadow 50x15+10+10 \) +swap -background none -layers merge +repage ~/Pictures/Screenshots/$(date +%A-%d-%B-%Y_%H-%M-%S).png

# proper shadow
exec maim -st 9999999 | convert - \( +clone  -background black -shadow 40x6+8+8 \) +swap -background none -layers merge +repage $HOME/Pictures/Screenshots/$(date +%A-%d-%B-%Y_%H-%M-%S).png

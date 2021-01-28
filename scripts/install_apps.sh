#!/bin/bash

# dir that script locate in
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# pacman
sudo pacman -Sy --noconfirm
sudo pacman -S --noconfirm `cat $DIR/../lists/pacman_apps`

# aur
paru -Sy --noconfirm
paru -S --noconfirm `cat $DIR/../lists/aur_apps`
paru -S --noconfirm `cat $DIR/../lists/fonts`

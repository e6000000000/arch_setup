#!/bin/bash

# dir that script locate in
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# remove all from user dir
rm -rf $DIR/user/

#create dirs
mkdir $DIR/user
mkdir $DIR/user/.config
mkdir $DIR/user/.scripts

# copy configs
cp -r ~/.config/i3 $DIR/user/.config/
cp -r ~/.config/polybar $DIR/user/.config/
cp -r ~/.config/kitty $DIR/user/.config/
cp -r ~/.config/fish $DIR/user/.config/
cp -r ~/.config/htop $DIR/user/.config/

# copy scripts
cp -r ~/.scripts $DIR/user/

# copy vimrc
cp ~/.vimrc $DIR/user/

# copu xinitrc
cp ~/.xinitrc $DIR/user/

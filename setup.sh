#!/bin/bash

# dir that script locate in
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# install paru
bash $DIR/scripts/paru_install.sh

# install apps
bash $DIR/scripts/install_apps.sh

# enable services
bash $DIR/scripts/services.sh

# install fish
bash $DIR/scripts/install_fish.sh

# install vim plugin manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# copy config files
cp -r $DIR/user/. ~

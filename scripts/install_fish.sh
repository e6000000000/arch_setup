#!/bin/bash

# dir that script locate in
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# install fish
sudo pacman -Sy --noconfirm
sudo pacman -S --noconfirm fish

# setup fish as default shell
echo /bin/fish | sudo tee -a /etc/shells
chsh -s /bin/fish

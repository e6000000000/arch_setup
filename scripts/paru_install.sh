#!/bin/bash
sudo pacman -Sy
sudo pacman -S --noconfirm --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
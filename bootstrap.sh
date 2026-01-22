#!usr/bin/env bash
set -e

sudo pacman -Syu --needed \
  neovim

cd ~
git clone https://aur.archlinux.org/verible.git
cd verible
makepkg si

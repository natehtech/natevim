#!usr/bin/env bash
set -e

sudo pacman -Syu --needed \
  neovim \
  base-devel \
  gcc \
  clang \
  wl-clipboard

cd ~
git clone https://aur.archlinux.org/verible.git
cd verible
makepkg si

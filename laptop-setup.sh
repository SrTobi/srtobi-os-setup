#!./os-install/os-install.py

## Prolog
set -e
shopt -s expand_aliases
alias pacm='sudo pacman --noconfirm'
alias yay='yay --noconfirm -S'

## Install base system
./setup.sh

## Install acpi for battery i3-block
pacm -S acpi


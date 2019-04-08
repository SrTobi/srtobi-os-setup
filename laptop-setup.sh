#!./os-install/os-install.py

## Prolog
shopt -s expand_aliases
alias pacm='sudo pacman --noconfirm'
alias yay='yay --noconfirm -S'

## Install base system
./setup.sh

## Install acpi for battery i3-block
pacm -S acpi

## Checkout laptop branch for i3
pushd ~/.config/i3
git checkout laptop
popd


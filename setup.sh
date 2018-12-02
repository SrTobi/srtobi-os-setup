#!./os-install/os-install.py

## Prolog
shopt -s expand_aliases
alias pacm='sudo pacman --noconfirm'
alias yay='yay --noconfirm -S'

## Install vim
pacm -S vim

## Setup vim
pushd ~/.config
git clone https://github.com/SrTobi/vim-config
cd vim-config
./install
popd

## Setup vim for root
sudo bash << EOF
cd ~/.config
git clone https://github.com/SrTobi/vim-config
cd vim-config
./install
EOF

## Install gedit
pacm -S gedit

## Install yay
pacm -S yay

## Install cmake
pacm -S cmake

## Instal npm
pacm -S nodejs npm

## Install Visual studio code
pacm -S code

## Install htop
pacm -S htop

## Install keepass
pacm -S keepass

## Install hh
yay hstr-git

## Install oh-my-zsh
yay oh-my-zsh-git

## Configure locale
sudo mv /etc/locale.conf /etc/locale.conf.org
sudo mv /etc/locale.gen  /etc/locale.gen.org
sudo cp locale.conf /etc/locale.conf
sudo cp locale.gen  /etc/locale.gen
sudo locale-gen

## Setup oh-my-zsh config
pushd ~/.config
git clone https://SirTobi@bitbucket.org/SirTobi/zsh-config
cd zsh-config
./install
popd

## Setup git config
pushd ~/.config/zsh-config
cp gitconfig ~/.gitconfig

## Set zsh as default shell
chsh -s $(which zsh)

## Setup zsh for root
sudo bash << EOF
pushd ~/.config
git clone https://SirTobi@bitbucket.org/SirTobi/zsh-config
cd zsh-config
./install
popd
chsh -s $(which zsh)
EOF


## Install i3blocks
pacm -S i3blocks

## Install rofi
pacm -S rofi

## Install xcwd
yay xcwd-git

## Install Kitty
pacm -S kitty
cp kitty.conf ~/.config/kitty/kitty.conf

## Install xclip
pacm -S xclip

## Install redshift
pacm -S redshift

## Setup xdg dirs
cp user-dirs.dirs ~/.config/user-dirs.dirs
rm -r ~/Desktop ~/Documents ~/Downloads ~/Music ~/Pictures ~/Public ~/Templates ~/Videos
mkdir ~/store

## Setup feh
pacm -S feh

## Setup wallpaper
mkdir ~/store/pictures
mkdir ~/store/pictures/wallpaper
cp df.png ~/store/pictures/wallpaper/df.png

## Setup i3
pushd ~/.config
rm -r i3
git clone https://github.com/SrTobi/i3-config i3 -b laptop
popd
cp xprofile ~/.xprofile
cp Xresources ~/.Xresources

## Install i3lock
sudo pacman -R i3lock
yay i3lock-color-git

## Setup wakelock service
sudo systemctl enable wakelock.service
sudo cp ~/.config/i3/wakelock.service /etc/systemd/system/wakelock.service

## Install nautilus
pacm -S nautilus

## Install firefox
pacm -S firefox

## Install gnome stuff
pacm -S gnome-clocks gnome-terminal gnome-system-monitor gnome-screenshot gnome-logs gnome-user-docs gnome-color-manager gnome-control-center gnome-keyring gnome-menus gnome-font-viewer gnome-disk-utility gnome-dictionary

## Install seafile
yay seafile-client

## Install graphic stuff
pacm -S inkscape
pacm -S gimp
pacm -S eog

## Install java
pacm -S jre-openjdk jre8-openjdk

## Install scala stuff
pacm -S scala scala-docs scala-sources
yay ammonite

## Install jetbrains toolbox
pacm -S jetbrains-toolbox


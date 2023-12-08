#!/usr/bin/env bash

Q="$USER will use sudo to install system dependencies and configure the \
greeter. Are you sure? ('y' to continue) "

read -p "$Q" -n 1 -r ; echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then exit 1; fi

# Install the terminal utilities.
sudo apt-get install curl screen unzip vim wget

# Install the GUI utitilites.
sudo apt-get install blueman catfish gigolo gnome-disk-utility \
  gnome-system-tools gucharmap keepassxc lightdm-gtk-greeter-settings \
  mate-calc menulibre onboard quiterss transmission vlc xfce4-panel-profiles

# Install the theme dependencies.
sudo apt-get install dmz-cursor-theme elementary-xfce-icon-theme \
  greybird-gtk-theme numix-gtk-theme

# Configure the greeter.
sudo cp ./lightdm/lightdm-gtk-greeter.conf /etc/lightdm/

# Configure XFCE4.
rm -rf $HOME/.config/xfce4/
cp -r ./xfce4/ $HOME/.config/
source ./gsettings/*.sh
killall xfconfd
xfce4-panel -r

# Clean up.
sudo apt-get autoremove

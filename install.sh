#!/usr/bin/env bash

Q="$USER will use sudo to install dependencies, configure the greeter and \
reboot the system. Are you sure? ('y' to continue) "
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

# Remove unnecessary dependencies.
sudo apt-get autoremove

# Configure the greeter.
sudo cp ./lightdm/lightdm-gtk-greeter.conf /etc/lightdm/

# Configure XFCE4.
rm -rf $HOME/.config/xfce4/
cp -r ./xfce4/ $HOME/.config/
source ./gsettings/*.sh

# Add a folder for portable apps.
mkdir -p $HOME/.local/bin
if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
  echo 'PATH=$PATH:$HOME/.local/bin' >> $HOME/.bashrc
  source $HOME/.bashrc
fi

# Reboot the system.
Q="Reboot the system now? ('y' to continue) "
read -p "$Q" -n 1 -r ; echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then exit 1; fi
sudo reboot

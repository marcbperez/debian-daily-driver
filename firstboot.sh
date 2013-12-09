#!/usr/bin/env bash

Q="The root account will add $USER to the sudo group and update the system. \
Are you sure? ('y' to continue) "
read -p "$Q" -n 1 -r ; echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then exit 1; fi

su - -c "usermod -aG sudo $USER \
&& apt-get update && apt-get dist-upgrade && apt-get autoremove"

Q="Reboot the system now? ('y' to continue) "
read -p "$Q" -n 1 -r ; echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then exit 1; fi

su - -c "reboot"

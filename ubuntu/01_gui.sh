#!/bin/bash
## xrdp source:  https://linuxconfig.org/ubuntu-20-04-remote-desktop-access-from-windows-10
sudo apt-get update && sudo apt-get upgrade && sudo apt-get -y  install  \
  gitk \
  meld \
  xclip \
  gparted \
  xfce4-goodies \
  xrdp
sudo systemctl enable --now xrdp
sudo ufw allow from any to any port 3389 proto tcp

 

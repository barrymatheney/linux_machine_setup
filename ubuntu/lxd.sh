#!/bin/bash

## https://www.cyberciti.biz/faq/install-lxd-on-ubuntu-20-04-lts-using-apt/

sudo apt update
sudo apt upgrade
sudo apt install lxd -y
sudo adduser $USER lxd
sudo lxd init


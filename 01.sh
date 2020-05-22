#!/bin/bash
printf 'bmatheney ALL=(ALL:ALL) NOPASSWD:ALL\n' | sudo tee -a /etc/sudoers >/dev/null

sudo apt update -y
sudo apt upgrade -y
sudo apt install git gitk htop curl wget -y

git config --global user.name "Barry Matheney"
git config --global user.email "barry_matheney_msdn@outlook.com"




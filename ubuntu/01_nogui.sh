#!/bin/bash
printf 'bmatheney ALL=(ALL:ALL) NOPASSWD:ALL\n' | sudo tee -a /etc/sudoers >/dev/null

sudo apt update -y
sudo apt upgrade -y
sudo apt install git htop curl wget  figlet dos2unix terminator  mc -y
# ansible docker.io
#sudo apt update -y
#sudo apt upgrade -y
sudo apt install -y  git htop curl wget  \
figlet \
dos2unix \
mc
#ansible 


git config --global user.name "Barry Matheney"
git config --global user.email "barry_matheney_msdn@outlook.com"

sudo groupadd docker
sudo usermod -aG docker $USER




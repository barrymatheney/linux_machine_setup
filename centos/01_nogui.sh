#!/bin/bash
printf 'bmatheney ALL=(ALL:ALL) NOPASSWD:ALL\n' | sudo tee -a /etc/sudoers >/dev/null

sudo yum -y install epel-release
sudo dnf --enablerepo=epel group -y install "Xfce" "base-x" 

sudo dnf install git htop curl wget ansible docker.io figlet mc -y

git config --global user.name "Barry Matheney"
git config --global user.email "barry_matheney_msdn@outlook.com"

sudo groupadd docker
sudo usermod -aG docker $USER




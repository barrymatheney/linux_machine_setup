#!/bin/bash

dir=mxartwork
[ -d "$dir" ] &&  rm -rf $dir
git clone https://github.com/MX-Linux/mx17-artwork.git  $dir
sudo cp -r $dir/* /usr/share/xfce4/backdrops/
[ -d "$dir" ] &&  rm -rf $dir
git clone https://github.com/MX-Linux/mx16-artwork.git  $dir
sudo cp -r $dir/* /usr/share/xfce4/backdrops/
[ -d "$dir" ] &&  rm -rf $dir


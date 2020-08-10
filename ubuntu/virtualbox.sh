#!/bin/bash

debfilename="virtualbox-6.1_6.1.8-137981~Ubuntu~eoan_amd64.deb"

wget https://download.virtualbox.org/virtualbox/6.1.8/$debfilename

sudo apt install ./$debfilename -y






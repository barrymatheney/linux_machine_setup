#!/bin/bash
A=$(inxi -F | head )
#echo $A
distro=$(echo $A | cut -d":" -f7)
echo Distro:  $(echo $distro  | sed 's|\(.*\) .*|\1|')
kernel=$(echo $A | cut -d":" -f4)
echo Kernel:  $(echo $kernel  | sed 's|\(.*\) .*|\1|')



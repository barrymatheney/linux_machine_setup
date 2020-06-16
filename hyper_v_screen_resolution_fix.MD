hyper-v screen resolution fix.md

https://askubuntu.com/questions/702628/ubuntu-hyper-v-guest-display-resolution-win-10-15-04


Edit /etc/default/grub with your editor of choice. Remember to use sudo:

For example:

sudo nano /etc/default/grub
Change this line:

GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
To this.

GRUB_CMDLINE_LINUX_DEFAULT="quiet splash video=hyperv_fb:1920x1080"
Then in a console type:

sudo update-grub
reboot
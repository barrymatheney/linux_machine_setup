printf 'bmatheney ALL=(ALL:ALL) NOPASSWD:ALL\n' | sudo tee -a /etc/sudoers >/dev/null

ssh-copy-id -i ~/.ssh/id_rsa.pub 192.168.1.xxx

#https://linuxconfig.org/virtualbox-install-guest-additions-on-ubuntu-20-04-lts-focal-fossa
sudo add-apt-repository multiverse 
sudo apt update && sudo apt-get upgrade -y 
sudo apt install dkms linux-headers-$(uname -r) build-essential
sudo reboot now


#MOUNT THE CD IN THE VBOX INTERFACE
sudo mkdir /media/cdrom
cd /media/cdrom
sudo ./VBoxLinuxAdditions.run 
sudo reboot now
sudo apt update && sudo apt-get upgrade -y 


lsmod  | grep vbox
# bmatheney@textxrdpub2004svr:~$ lsmod  | grep vbox
# vboxvideo              36864  0
# vboxguest             348160  1
# ttm                   106496  2 vmwgfx,vboxvideo
# drm_kms_helper        184320  2 vmwgfx,vboxvideo
# drm                   491520  5 vmwgfx,drm_kms_helper,vboxvideo,ttm




virtualbox-guest-x11



git config --global user.name "Barry Matheney"
git config --global user.email "barry_matheney_msdn@outlook.com"

sudo apt update
sudo apt install net-tools nmap tasksel -y
tasksel --list-tasks
sudo tasksel install xubuntu-desktop 
sudo apt install xrdp 

#https://tecnstuff.net/how-to-install-xrdp-on-ubuntu-20-04/
#history from bmatheney@textxrdpub2004svr first and only configuration
#   46  sudo apt update
#    47  sudo apt install net-tools nmap tasksel -y
#    48  tasksel --list-tasks
#    49  sudo tasksel install xubuntu-desktop -y
#    50  sudo tasksel install xubuntu-desktop 
#    51  sudo apt install xrdp
#    52  sudo systemctl status xrdp
#    53  sudo adduser xrdp ssl-cert
#    54  sudo systemctl restart xrdp
#    55  sudo systemctl status xrdp
#    56  sudo ufw allow from 192.168.0.0/16 to any port 3389
#  Then tested, and it worked fine, the first time





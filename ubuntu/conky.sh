#!/bin/bash
# https://linuxconfig.org/ubuntu-20-04-system-monitoring-with-conky-widgets#:~:text=Conky%20is%20a%20system%20monitoring,little%20widget%20on%20your%20screen.
sudo apt install conky-all -y

cp __homedirectorydotconfigs/.conkyrc  ~/
echo "conky -p 5 -d" >> ~/.xsessionrc  ~/ && chmod +x ~/.xsessionrc

echo done





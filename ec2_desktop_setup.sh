#!/bin/bash
sudo bash -c 'echo "127.0.0.1 $(hostname)" >> /etc/hosts'
sudo apt-get update
#sudo apt-get upgrade x11-xserver-utils
sudo apt-get install -y xfce4 vnc4server
sudo apt-get install -y docker.io
sudo usermod ubuntu -a -G docker
mkdir ~/.vnc
mv ec2_xstartup ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup
echo -e "vnc1234\nvnc1234" | vncpasswd
sudo su - ubuntu
#vncserver
#vncserver -kill :1
vncserver -geometry 1600x1024 -geometry 1400x1050 -geometry 1280x1024 -geometry 1024x768

#!/bin/bash
#Script to install node + mongo4pi

cd /home/pi/

echo -e "\x1B[01;95m downloading node... \x1B[0m"
wget http://node-arm.herokuapp.com/node_latest_armhf.deb

echo -e "\x1B[01;95m installing node... \x1B[0m"
sudo dpkg -i /home/pi/node_latest_armhf.deb

echo -e "\x1B[01;95m downloading mongo4pi... \x1B[0m"
git clone https://github.com/svvitale/mongo4pi.git

echo -e "\x1B[01;95m installing mongo4pi... \x1B[0m"
cd mongo4pi
./install.sh

echo -e "\x1B[01;95m removing install files... \x1B[0m"

cd /home/pi/
rm -rf node_latest_armhf
rm node_latest_armhf.deb
rm -rf mongo4pi

echo -e "\x1B[01;95m installation complete... \x1B[0m"

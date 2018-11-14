#!/bin/bash
apt update -y
apt install -y sudo gcc g++ make automake git screen redis-server
wget -qO- https://deb.nodesource.com/setup_10.x | sudo -E bash -
apt update -y
apt install -y nodejs
git clone git://github.com/askmike/gekko.git -b stable
cd gekko/
npm install --only=production
screen -S tf2 node gekko --ui

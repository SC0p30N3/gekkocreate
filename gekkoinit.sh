#!/bin/bash
apt update -y
apt install -y sudo gcc g++ make automake git screen redis-server
wget -qO- https://deb.nodesource.com/setup_10.x | sudo -E bash -
apt update -y
apt install -y nodejs
git clone git://github.com/askmike/gekko.git -b stable
npm install sqlite3@3.1.4
cd gekko/
npm install --only=production
screen 
node gekko --ui

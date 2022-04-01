#!/bin/bash
apt-get -y update

pwd
id
ls -a
pwd
cd /home/ubuntu/app
ls -a
sudo rm -rf node_modules package-lock.json
source /home/ubuntu/.nvm/nvm.sh
npm install

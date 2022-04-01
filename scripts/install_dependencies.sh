#!/bin/bash
apt-get -y update

pwd
id
cd /home/ubuntu/my-node-app
pwd
sudo rm -rf node_modules package-lock.json
sudo npm install

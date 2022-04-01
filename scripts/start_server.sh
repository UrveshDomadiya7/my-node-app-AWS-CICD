#!/bin/bash

source /home/ubuntu/.bashrc
source /home/ubuntu/.nvm/nvm.sh

cd /var/www/my-node-app/
sudo npm install pm2@latest -g

sudo pm2 start server.js

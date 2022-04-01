#!/bin/bash

source /home/ubuntu/.bashrc

cd /var/www/my-node-app/
sudo npm install pm2@latest -g
pm2 start server.js

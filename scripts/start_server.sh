#!/bin/bash

source /home/ubuntu/.bashrc
source /home/ubuntu/.nvm/nvm.sh

cd /var/www/my-node-app/
# sudo npm install pm2@latest -g

/home/ubuntu/.nvm/versions/node/v16.14.2/bin/pm2 start server.js -f

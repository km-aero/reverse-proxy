#!/bin/bash

# Update app store
sudo apt-get update -y

# upgrade everything i have
sudo apt-get upgrade -y

# install nginx
sudo apt-get install nginx -y

# install git
sudo apt-get install git

# install nodejs
curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install nodejs
sudo apt-get install npm -y
npm install pm2@latest -g

sudo systemctl start nginx
unlink /etc/nginx/sites-enabled/default
ln -s /etc/nginx/sites-available/reverse-proxy.conf /etc/nginx/sites-enabled/reverse-proxy.conf
sudo systemctl reload-or-restart nginx
cd /app_folder
nodejs app.js

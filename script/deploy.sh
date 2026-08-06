#!/bin/bash
set -e

echo "Installing NGINX..."
sudo apt update -y
sudo apt install -y nginx

echo "Copying app files..."
sudo cp -r app/* /var/www/html/

echo "Applying NGINX config..."
sudo cp app/nginx.conf /etc/nginx/sites-available/default

echo "Restarting NGINX..."
sudo systemctl restart nginx
sudo systemctl enable nginx

echo "Deployment complete!"
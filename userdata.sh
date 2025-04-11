#!/bin/bash
apt update -y
apt install nginx -y
echo "<h1>Hello from $(hostname)</h1>" > /var/www/html/index.html
systemctl enable nginx
systemctl start nginx

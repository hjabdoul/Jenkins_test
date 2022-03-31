#!/bin/bash

sudo apt update -y
sudo apt install -y apache2

sudo systemctl enable --now apache2
sudo hostnamectl set-hostname apache2_root
sudo echo "<h1>Je suis le plus fort "hostname"</h1>" > /var/www/html/index.html
exit;

#!/bin/bash

apt update -y
apt install -y apache2

systemctl enable --now apache2
hostnamectl set-hostname apache2_root
echo "<h1>Github "hostname"</h1>" > /var/www/html/index.html
exit;

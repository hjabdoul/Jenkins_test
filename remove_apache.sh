#!/bin/bash

systemctl disable --now apache2
rm -Rf /var/www/html
apt purge -y apache2

exit;

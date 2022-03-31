#!/bin/bash

IMAGE_ID=$(pveam list local | grep ubuntu | cut -d" " -f1)
A=$(pct list | wc -l)
CURRENT_ID=$(( 100 + $A -1))

pct create $CURRENT_ID $IMAGE_ID --rootfs local-lvm:8 --nameserver 8.8.8.8 -net0 name=eth0,bridge=vmbr0,gw=192.168.191.56,ip=192.168.191.200/24

echo "Le conteneur a été créer"

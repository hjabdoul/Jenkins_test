#!/bin/bash

IMAGE_ID=$(pveam list local | grep ubuntu | cut -d" " -f1)
A=$(pct list | wc -l)
CURRENT_ID=$(( 100 + $A -1))

#pct create $CURRENT_ID $IMAGE_ID --rootfs local-lvm:8 --nameserver 8.8.8.8 -net0 name=eth0,bridge=vmbr0,gw=192.168.191.56,ip=192.168.191.200/24
pct create $CURRENT_ID $IMAGE_ID --hostname $1 --cores 1 --memory 512 --swap 512 --rootfs local-lvm:8 --nameserver 8.8.8.8 -net0 name=eth0,bridge=vmbr0,gw=192.168.217.50,ip=192.168.217.12/24 --start 1 --password $2 
#local:vztmpl/ubuntu-20.04-standard_20.04-1_amd64.tar.gz
echo "Le conteneur a été créer"

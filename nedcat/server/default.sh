#!/bin/sh
# run as root
apt update
apt upgrade -y
apt install -y openssh-server openssh-client

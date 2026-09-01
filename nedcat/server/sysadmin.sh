#!/bin/sh
# run as root

apt update
apt upgrade -y
# 1. ftp server
apt install -y vsftpd
# 2. system monitors
apt install -y wavemon nmon htop

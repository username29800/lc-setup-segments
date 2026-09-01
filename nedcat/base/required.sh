#!/bin/sh
#run as root

# 1. package installer
apt update
apt upgrade -y
# 1.1. fundamental - editors
apt install -y vim nano
# 1.2. fundamental - network
apt install -y wget curl git net-tools
# 1.3. fundamental - local administration
apt install -y sudo unzip xz-utils gzip lzip htop openssl
# 1.4. fundamental - locales
apt install -y locales
# 1.5. fundamental - default shells
apt install -y bash

#!/bin/sh
#run as root

# 1. package installer
dnf update -y
dnf install -y epel-release
# 1.1. fundamental - editors
dnf install -y vim nano
# 1.2. fundamental - network
dnf install -y wget curl git net-tools
# 1.3. fundamental - local administration
dnf install -y sudo unzip xz gzip lzip htop openssl
# 1.4. fundamental - locales
dnf install -y glibc-langpack-en
# 1.5. fundamental - default shells
dnf install -y bash

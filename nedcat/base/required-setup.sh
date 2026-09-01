#!/bin/sh
# run as root
# target system: minimal rootfs, systems that need to be manually set up

# 1. utf8 locale
sed -i 's,^# en_US.UTF-8 UTF-8$,en_US.UTF-8 UTF-8,' /etc/locale.gen
locale-gen
# 2. adduser
useradd -G sudo -s /usr/bin/bash -p "`openssl passwd -6 'changemepasswd'`" user

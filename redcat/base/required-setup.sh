#!/bin/sh
# run as root
# target system: minimal rootfs, systems that need to be manually set up

# 2. adduser
useradd -G wheel -s /usr/bin/bash -p "`openssl passwd -6 'changemepasswd'`" user

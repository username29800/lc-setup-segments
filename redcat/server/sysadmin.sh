#!/bin/sh
# run as root

dnf update -y
# 1. ftp server
dnf install -y vsftpd
# 2. system monitors
dnf install -y wavemon nmon htop

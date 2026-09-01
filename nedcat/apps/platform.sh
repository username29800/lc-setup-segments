#!/bin/sh
# run as root

# NOTE: argument $1 is username

apt install -y flatpak libfuse2*
su -c 'flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo' "$1"

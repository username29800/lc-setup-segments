#!/bin/sh
#run as root

# 1. package installer
apt update
apt upgrade -y
# 1.1. advanced - terminal utilities
apt install -y ripgrep eza mc
# 1.2. advanced - editors
apt install -y emacs-common
# 1.3. advanced - administration
apt install -y iproute
apt install -y iproute2
apt install -y fastfetch tmux screen
apt install -y neofetch tmux screen
# 1.4. advanced - shell and scripting
apt install -y zsh python3 gawk perl


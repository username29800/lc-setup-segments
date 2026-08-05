#!/bin/sh
#run as root

# 1. package installer
dnf update -y
# 1.1. advanced - terminal utilities
dnf install -y ripgrep mc 
# 1.2. advanced - editors
dnf install -y emacs-common
# 1.3. advanced - administration
dnf install -y iproute
dnf install -y iproute2
dnf install -y fastfetch tmux screen
dnf install -y neofetch tmux screen
# 1.4. advanced - shell and scripting
dnf install -y zsh python3 gawk perl


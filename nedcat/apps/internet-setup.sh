#!/bin/sh
# run as user

# nedcat Application segment - Internet Suite installer

# data
arc_firefox='https://download-installer.cdn.mozilla.net/pub/firefox/releases/153.0/linux-x86_64/en-US/firefox-153.0.tar.xz'
arc_thunder='https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/153.0/linux-x86_64/en-US/thunderbird-153.0.tar.xz'
arc_discord='https://stable.dl2.discordapp.net/apps/linux/1.0.150/discord-1.0.150.tar.gz'
arc_seamon='https://archive.seamonkey-project.org/releases/2.53.23/linux-x86_64/en-US/seamonkey-2.53.23.en-US.linux-x86_64.tar.bz2'

# common configurations
cpath="`cd "$1" && pwd`"
dpath="${cpath}/nedcat.d/Applications/data"
cd "${cpath}"'/nedcat.d/Applications'

# segment-specific prerequisites
mkdir data/Firefox data/Thunderbird data/Discord data/Seamonkey

# nedcat Application segment - Firefox installer
curl -o archives/Firefox.tar.xz "$arc_firefox"
tar --overwrite -C data/Firefox -xf archives/Firefox.tar.xz
chmod 0755 data/Firefox/*/firefox
ln -sf "$dpath"/Firefox/*/firefox menu/Firefox

# nedcat Application segment - Thunderbird installer
curl -o archives/Thunderbird.tar.xz "$arc_thunder"
tar --overwrite -C data/Thunderbird -xf archives/Thunderbird.tar.xz
chmod 0755 data/Thunderbird/*/thunderbird
ln -sf "$dpath"/Thunderbird/*/thunderbird menu/Thunderbird

# nedcat Application segment - Discord installer
curl -o archives/Discord.tar.gz "$arc_discord"
tar --overwrite -C data/Discord -xf archives/Discord.tar.gz
chmod 0755 data/Discord/*/discord
ln -sf "$dpath"/Discord/*/discord menu/Discord

# nedcat Application segment - SeaMonkey installer
curl -o archives/Seamonkey.tar.bz2 "$arc_seamon"
tar --overwrite -C data/Seamonkey -xf archives/Seamonkey.tar.bz2
chmod 0755 data/Seamonkey/*/seamonkey
ln -sf "$dpath"/Seamonkey/*/seamonkey menu/Seamonkey

#!/bin/sh
# run as root

arc_discord='https://stable.dl2.discordapp.net/apps/linux/1.0.150/discord-1.0.150.deb'

apt install -y firefox-esr thunderbird purple-discord pidgin hexchat irssi w3m lynx elinks
apt install -y thunderbird purple-discord pidgin hexchat irssi w3m lynx elinks

curl -o nedcat-install-Discord.deb "$arc_discord"
apt install -y ./nedcat-install-Discord.deb
rm -f nedcat-install-Discord.deb

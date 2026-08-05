#!/bin/sh
# run as root

set -e

# 1. install dnt2aw for root
homepath="`su -c 'echo $HOME' root`"
port="`echo "$1" | sed 's,^$,22,'`"
cd "$homepath"
rm -rf dnt2srv-backup
mv dnt2srv dnt2srv-backup
git clone https://gitlab.com/username29800/dnt2aw dnt2srv
cd dnt2srv
sh cfgenv.sh "$homepath"
sh lib/newserver . d2sv-default "$port" d2sv-data > d2sv-default
sh lib/dntenv_f . d2sv-default
sh lib/dntkey_f . d2sv-default

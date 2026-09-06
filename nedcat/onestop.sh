# run as root

apt update && apt upgrade -y
apt install -y git

# segment: base
sh base/required.sh
#sh base/required-setup.sh
sh base/advanced.sh
sh base/advanced-setup-u.sh

# segment: env-buildtools
sh env/build-base.sh
sh env/build-c.sh
sh env/build-sh.sh

# segment: env-base
sh env/remote.sh
sh env/font-extras.sh
sh env/testing.sh

# segment: server
sh server/default.sh
sh server/default-setup.sh
sh server/sysadmin.sh
sh server/sysadmin-setup.sh

# pseudo-segment: graphical environment
apt install -y xfce4 dbus-x11


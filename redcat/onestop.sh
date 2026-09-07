# run as root
# usage: sh ./onestop.sh [user] [home dir]

dnf update -y
dnf install -y git

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

# segment: app platform
#sh apps/platform.sh

# pseudo-segment: graphical environment
# NOTE: Among these two installer lines below,
#       pick the one that fits the package manager.
dnf groupinstall -y xfce
#dnf group install -y xfce*

# pseudo-segment: user
cp -a . "$2/scripts_setup"
chown -R "$1" "$2/scripts_setup"
sudo -u "$1" sh -c "cd $2/scripts_setup/ \
&& sh base/advanced-setup-u.sh  \
&& sh apps/platform-user.sh \
&& sh apps/internet-setup.sh $2"


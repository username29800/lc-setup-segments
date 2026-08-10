FROM docker.io/library/fedora:latest
USER root

# pseudo-segment: prerequisites

RUN dnf update -y
RUN dnf install -y git

WORKDIR /root
RUN git clone https://github.com/username29800/lc-setup-segments redcat

WORKDIR /root/redcat/redcat

# segment: base
RUN sh base/required.sh
RUN sh base/required-setup.sh
RUN sh base/advanced.sh
RUN sh base/advanced-setup-u.sh

# segment: env-buildtools
RUN sh env/build-base.sh
RUN sh env/build-c.sh
RUN sh env/build-sh.sh

# segment: env-base
RUN sh env/testing.sh
RUN sh env/remote.sh
RUN sh env/font-extras.sh

# segment: server
RUN sh server/default.sh
RUN sh server/default-setup.sh
RUN sh server/sysadmin.sh
RUN sh server/sysadmin-setup.sh

# pseudo-segment: user
RUN cp -a /root/redcat /home/user/redcat
RUN chown -R user /home/user/redcat

USER user
WORKDIR /home/user

RUN sh redcat/redcat/base/advanced-setup-u.sh

# pseudo-segment: graphical environment
# NOTE: Among these two commented lines below,
#       pick the one that fits the package manager.
USER root
#RUN dnf groupinstall -y xfce
#RUN dnf group install -y xfce*

# pseudo-segment: launcher
WORKDIR /root/dnt2srv
RUN rm -f /run/nologin
CMD ["sh", "lib/u_dntpst_f", ".", "d2sv-default"]

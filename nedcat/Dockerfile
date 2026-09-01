FROM docker.io/library/ubuntu:latest
#FROM docker.io/library/debian:latest
USER root

# pseudo-segment: prerequisites

RUN apt update -y
RUN apt install -y git

WORKDIR /root
RUN git clone https://github.com/username29800/lc-setup-segments nedcat

WORKDIR /root/nedcat/nedcat

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
RUN sh env/remote.sh
RUN sh env/font-extras.sh
RUN sh env/testing.sh

# segment: server
RUN sh server/default.sh
RUN sh server/default-setup.sh
RUN sh server/sysadmin.sh
RUN sh server/sysadmin-setup.sh

# pseudo-segment: user
RUN cp -a /root/nedcat /home/user/nedcat
RUN chown -R user /home/user/nedcat

USER user
WORKDIR /home/user

RUN sh nedcat/nedcat/base/advanced-setup-u.sh
RUN sed -i '$cxfce4-session' .config/tigervnc/xstartup

# pseudo-segment: graphical environment
USER root
RUN apt install -y xfce4 dbus-x11

# pseudo-segment: launcher
WORKDIR /root/dnt2srv
CMD ["sh", "lib/u_dntpst_f", ".", "d2sv-default"]

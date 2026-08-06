FROM docker.io/library/rockylinux:8
USER root

RUN dnf update -y
RUN dnf install -y git

WORKDIR /root
RUN git clone https://github.com/username29800/lc-setup-segments redcat

WORKDIR /root/redcat/redcat
RUN sh base/required.sh
RUN sh base/required-setup.sh
RUN sh base/advanced.sh
RUN sh base/advanced-setup-u.sh
RUN sh env/build-base.sh
RUN sh env/build-c.sh
RUN sh env/build-sh.sh
RUN sh env/testing.sh
RUN sh env/remote.sh
RUN sh env/font-extras.sh
RUN sh server/default.sh
RUN sh server/default-setup.sh
RUN sh server/sysadmin.sh

USER user
WORKDIR /home/user

RUN sh /root/redcat/redcat/base/advanced-setup-u.sh

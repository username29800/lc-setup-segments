FROM docker.io/library/ubuntu:latest
#FROM docker.io/library/debian:latest
USER root

# pseudo-segment: prerequisites

RUN apt update && apt upgrade -y
RUN apt install -y git

WORKDIR /root
RUN git clone https://github.com/username29800/lc-setup-segments nedcat

WORKDIR /root/nedcat/nedcat

RUN sh base/required.sh
RUN sh base/required-setup.sh

RUN sh onestop.sh user /home/user

USER user
WORKDIR /home/user

RUN sed -i '$cxfce4-session' .config/tigervnc/xstartup

# pseudo-segment: launcher
USER root
WORKDIR /root/dnt2srv
CMD ["sh", "lib/u_dntpst_f", ".", "d2sv-default"]

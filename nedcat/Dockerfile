FROM docker.io/library/ubuntu:latest
#FROM docker.io/library/debian:latest
USER root

# pseudo-segment: prerequisites

RUN apt update && apt upgrade -y
RUN apt install -y git

WORKDIR /root
RUN git clone https://github.com/username29800/lc-setup-segments nedcat

WORKDIR /root/nedcat/nedcat

RUN sh onestop.sh

RUN sed -i '$cxfce4-session' .config/tigervnc/xstartup

# pseudo-segment: launcher
WORKDIR /root/dnt2srv
CMD ["sh", "lib/u_dntpst_f", ".", "d2sv-default"]

FROM d-rsrc:latest
USER root
RUN apt update
RUN apt upgrade -y
#RUN apt install -y xfe caja pluma ibus ibus-hangul dbus dbus-x11 rxvt-unicode xfce4-terminal tigervnc-standalone-server tigervnc-viewer rofi openbox firefox-esr emacs gnome-builder vim-gtk3 plank xcompmgr fonts-noto-cjk fonts-noto-cjk-extra fonts-noto-color-emoji fonts-nanum
RUN apt install -y ibus ibus-hangul dbus dbus-x11 rxvt-unicode xfce4-terminal tigervnc-standalone-server tigervnc-viewer fonts-noto-cjk fonts-noto-cjk-extra fonts-noto-color-emoji fonts-nanum
WORKDIR /home/user
RUN git clone https://github.com/username29800/ub24-server-remote-ready-ct nedcat
WORKDIR nedcat/segments
RUN sh onestop-apps.sh
RUN sh env/font-extras.sh
RUN chown -R user ..
USER user
WORKDIR /home/user/nedcat/segments
RUN sh apps/platform-user.sh
RUN sh apps/internet-setup.sh /home/user
WORKDIR /home/user
RUN echo pkill xcompmgr > refresh
RUN echo pkill plank >> refresh
RUN echo xcompmgr \& >> refresh
RUN echo plank \& >> refresh
RUN echo ibus-daemon -rxd > startup
RUN echo xcompmgr \& >> startup
RUN echo plank \& >> startup
RUN echo plank --preferences >> startup
RUN echo ibus-setup \& >> startup
RUN echo plank --preferences > settings
RUN echo ibus-setup \& >> settings
RUN echo xrandr --output VNC-0 --mode \$1 > ascreen
RUN chmod 0755 startup refresh settings ascreen
RUN sed -i '$s,^,#,' .config/tigervnc/xstartup
RUN sed -i '$aibus-daemon -rxd' .config/tigervnc/xstartup
RUN sed -i '$axfce4-session' .config/tigervnc/xstartup
RUN git clone https://github.com/syl20bnr/spacemacs .emacs.d
#RUN git clone https://github.com/naver/d2codingfont
#WORKDIR /home/user/d2codingfont
#RUN unzip D2Coding-Ver1.3.2*.zip
#RUN mkdir -p /home/user/.fonts
#RUN cp -a D2CodingAll/*.ttc ~/.fonts
#RUN fc-cache
USER root
CMD ["/usr/sbin/sshd", "-D"]

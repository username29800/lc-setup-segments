#!/bin/sh
# run as root
apt install -y fonts-noto-cjk-extra fonts-nanum fontconfig
cd /
#git clone https://github.com/naver/d2codingfont
git clone https://github.com/naver/d2-coding-font
cd d2-coding-font

# >>> These two lines are deprecated due to recent updates on D2Coding.
#unzip D2Coding-Ver1.3.2-*.zip
#cp D2Coding/D2Coding-Ver1.3.2-*.ttf /usr/share/fonts

# <Prereq> make fonts directory
mkdir -p /usr/share/fonts

# <Fallback> Ensure the default font is installed on any environment
cp -a fonts/ttf/D2Coding-Regular.ttf /usr/share/fonts
# <Main> Install the entire font family
cp -a fonts/ttf/D2Coding-*.ttf /usr/share/fonts
# <Update> Update fonts cache
fc-cache

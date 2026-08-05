#!/bin/sh
# run as user

# 1. retrieve git repositories
git clone https://gitlab.com/username29800/dnt2aw $HOME/dnt2setup
git clone https://github.com/ohmyzsh/ohmyzsh $HOME/ohmyzsh-setup

# 2. install oh-my-zsh
cd $HOME/ohmyzsh-setup
sed -i 's,^ *exec zsh -l *\?,#&,' tools/install.sh
bash tools/install.sh

# 3. install 90-l'days (dnt2aw's user-level setup)
cd $HOME/dnt2setup
sh cfgenv.sh "$HOME"

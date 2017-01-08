#!/bin/bash

echo -e "\n\nInstalling urxvt and related packages..."

apt-get -qq install rxvt-unicode tmux fonts-inconsolata zsh wmctrl -y

wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cp ${DIR}/mortalscumbag.zsh-theme ${USER_HOME}/.oh-my-zsh/themes
cp ${DIR}/.* ${USER_HOME}

xrdb -merge ${USER_HOME}/.Xresources
chsh -s /bin/zsh

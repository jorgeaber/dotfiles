#!/bin/bash

echo -e "\n\nInstalling urxvt and related packages..."

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
USER_HOME=$(eval echo ~${SUDO_USER})

apt-get -qq install rxvt-unicode tmux fonts-inconsolata zsh wmctrl -y
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
chsh -s /bin/zsh

cp ${DIR}/mortalscumbag.zsh-theme ${USER_HOME}/.oh-my-zsh/themes
cp ${DIR}/.* ${USER_HOME}

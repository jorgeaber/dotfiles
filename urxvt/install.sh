#!/bin/bash

echo -e "\n\nInstalling urxvt and related packages..."

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
USER_HOME=$(eval echo ~${SUDO_USER})

sudo apt-get -qq install rxvt-unicode tmux fonts-inconsolata zsh wmctrl -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /bin/zsh

mkdir -p ${USER_HOME}/.oh-my-zsh/themes
cp ${DIR}/mortalscumbag.zsh-theme ${USER_HOME}/.oh-my-zsh/themes
cp ${DIR}/.* ${USER_HOME}

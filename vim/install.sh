#!/bin/bash

echo -e "\n\nInstalling vim... "

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
USER_HOME=$(eval echo ~${SUDO_USER})

apt-get -qq install vim-gnome -y
git clone https://github.com/VundleVim/Vundle.vim.git ${USER_HOME}/.vim/bundle/Vundle.vim

mkdir -p ${USER_HOME}/.vim/colors 
curl https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim > ${USER_HOME}/.vim/colors/solarized.vim

cp ${DIR}/.vimrc ${USER_HOME}/.vimrc 
cp ${DIR}/.vimrc /root/.vimrc
cp -r ${USER_HOME}/.vim /root/.vim 

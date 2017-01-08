#!/bin/bash

echo -e "\n\nInstalling vim... "

apt-get -qq install vim-gnome -y

git clone https://github.com/VundleVim/Vundle.vim.git ${USER_HOME}/.vim/bundle/Vundle.vim

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir -p ${USER_HOME}/.vim/colors 
cp ${DIR}/solarized.vim ${USER_HOME}/.vim/colors 
cp ${DIR}/.vimrc ${USER_HOME}/.vimrc  

cp -r ${USER_HOME}/.vim /root/.vim 
cp ${USER_HOME}/dotfiles/vim/.vimrc /root/.vimrc

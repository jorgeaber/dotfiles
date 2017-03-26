#!/bin/bash

echo -e "\n\nInstalling utils..."

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
USER_HOME=$(eval echo ~${SUDO_USER})

sudo apt-get -qq install unclutter git-core rtorrent evince mpg123 irssi ssh curl ruby-full python-dev python-pip -y 
sudo gem install sass
sudo pip install virtualenv virtualenvwrapper

cp ${DIR}/.gitconfig ${USER_HOME}

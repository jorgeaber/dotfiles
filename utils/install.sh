#!/bin/bash

echo -e "\n\nInstalling utils..."

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

apt-get -qq install git-core rtorrent evince mpg123 irssi ssh curl ruby-full python-dev python-pip -y 

sudo gem install sass
sudo pip install virtualenv virtualenvwrapper

cp ${DIR}/.gitconfig ${USER_HOME}

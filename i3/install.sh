#!/bin/bash

echo -e "\n\nInstalling i3..."

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
USER_HOME=$(eval echo ~${SUDO_USER})

apt-get -qq install i3 -y

mkdir ${USER_HOME}/.i3
cp ${DIR}/config ${USER_HOME}/.i3

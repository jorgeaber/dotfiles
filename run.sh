#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
USER_HOME=$(eval echo ~${SUDO_USER})

# install all packages
${DIR}/utils/install.sh
${DIR}/urxvt/install.sh
${DIR}/i3/install.sh
${DIR}/vim/install.sh

# clean home directory
rm -r ${USER_HOME}/Desktop 
rm -r ${USER_HOME}/Documents 
rm -r ${USER_HOME}/Downloads 
rm -r ${USER_HOME}/Music 
rm -r ${USER_HOME}/Pictures 
rm -r ${USER_HOME}/Public 
rm -r ${USER_HOME}/Templates 
rm -r ${USER_HOME}/Videos
mkdir ${USER_HOME}/tmp
xdg-user-dirs-update --set DESKTOP ${USER_HOME}
xdg-user-dirs-update --set DOWNLOADS ${USER_HOME}/tmp

#!/bin/bash

USER_HOME=$(eval echo ~${SUDO_USER})
export USER_HOME

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
${DIR}/utils/install.sh
${DIR}/urxvt/install.sh
${DIR}/i3/install.sh
${DIR}/vim/install.sh

rm -r ${USER_HOME}/Desktop 
rm -r ${USER_HOME}/Documents 
rm -r ${USER_HOME}/Downloads 
rm -r ${USER_HOME}/Music 
rm -r ${USER_HOME}/Pictures 
rm -r ${USER_HOME}/Public 
rm -r ${USER_HOME}/Templates 
rm -r ${USER_HOME}/Videos
xdg-user-dirs-update --set DESKTOP ${USER_HOME}
xdg-user-dirs-update --set DOWNLOADS ${USER_HOME}/tmp

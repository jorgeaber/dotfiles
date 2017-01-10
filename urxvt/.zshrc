export PATH=/bin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/opt/node/bin
export PATH=$PATH:/opt/python-3.4.3/bin
export ZSH=$HOME/.oh-my-zsh

source /usr/local/bin/virtualenvwrapper.sh

ZSH_THEME="mortalscumbag"

plugins=(git)

source $ZSH/oh-my-zsh.sh

set -o vi

xset b off

wmctrl -r :ACTIVE: -b add,fullscreen

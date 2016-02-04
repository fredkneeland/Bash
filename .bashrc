bles color in the terminal bash shell export
CLICOLOR=1
alias ls='ls -G'

function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"

PS1="$GREEN\u$NO_COLOR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "

source ~/.git-completion.sh

open ~/.profile

# virtualenvwrapper
# Don't let Mac python (in /usr/bin) supercede brew's python (/usr/local/bin)
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python

# Sets the working directory for all virtualenvs
export WORKON_HOME=$HOME/.virtualenvs

# Sources the virtualenvwrapper so all the commands are availabe in the shell
source /usr/local/bin/virtualenvwrapper.sh

export PATH=$PATH:/usr/local/go/bin

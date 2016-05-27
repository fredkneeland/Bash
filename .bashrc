#bles color in the terminal bash shell export
CLICOLOR=1
alias ls='ls -G'
alias g='git'
alias mvg='cp ~/Bash/.gitconfig ~/.gitconfig'
alias s='source ~/.bashrc'
alias vb='vim ~/.bashrc'

function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"

PS1="$GREEN\u$NO_COLOR:\w$YELLOW\$(parse_git_branch)$NO_COLOUR\$ "

#source ~/.git-completion.sh

#open ~/.profile

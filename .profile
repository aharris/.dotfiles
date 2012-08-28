export BROWSER=open
export EDITOR=vim
export HISTCONTROL=ignoreboth
export HISTSIZE=10000
export PATH=bin:/usr/local/bin:/usr/local/sbin:$PATH

[[ $- == *i* ]]   &&   . ~/.dotfiles/git-prompt.sh
source ~/.dotfiles/git-completion.bash

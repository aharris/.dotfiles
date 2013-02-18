export BROWSER=open
export HISTCONTROL=ignoreboth
export HISTSIZE=10000
export PATH=bin:/usr/local/bin:/usr/local/sbin:$PATH
export PATH="~/node_modules/.bin:$PATH"
export PATH=$PATH:/usr/local/git/bin

[[ $- == *i* ]]   &&   . ~/.dotfiles/git-prompt.sh
source ~/.dotfiles/git-completion.bash
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" #RVM

alias localip='ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d " " -f2'

alias touch-templates="find ~/Sites/telenet/telenet_dawn/src/templates/dusts |xargs touch"
alias dawn2-templates="find ~/Sites/telenet/dawn2/src/templates/dusts |xargs touch"

alias stb-ssh="ssh -f root@172.24.20.78 -L 8081:172.24.20.78:8081 -N"

alias g="git"
alias gs="git stash"
alias gcm="git commit -m"
alias ga="git add"
alias gst="git status"
alias gfap="git fetch --all --prune"
alias gco="git checkout"

alias mergeDev="git checkout develop && git pull && git checkout - && git merge develop"

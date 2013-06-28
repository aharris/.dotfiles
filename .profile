export BROWSER=open
export HISTCONTROL=ignoreboth
export HISTSIZE=10000
export PATH="bin:/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="~/node_modules/.bin:$PATH"
export PATH="$PATH:/usr/local/git/bin:/usr/local/share/npm/bin/"
export PATH="/usr/local/share/npm/bin:$PATH"

[[ $- == *i* ]]   &&   . ~/.dotfiles/git-prompt.sh
source ~/.dotfiles/git-completion.bash
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" #RVM

alias localip='ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d " " -f2'

alias touch-templates="find ~/Sites/telenet/telenet_dawn/src/templates/dusts |xargs touch"
alias dawn2-templates="find ~/Sites/telenet/dawn2/src/templates/dusts |xargs touch"

alias ssh-gateway="ssh -f root@172.24.200.27 -L 8081:172.24.200.27:8081 -N"
alias ssh-client="ssh -f root@172.24.20.149 -L 8081:172.24.20.149:8081 -N"

alias g="git"
alias gs="git stash"
alias gcm="git commit -m"
alias ga="git add"
alias gst="git status"
alias gfap="git fetch --all --prune"
alias gco="git checkout"

alias cw="compass watch"

alias grunt-dawn="grunt pipe & grunt develop & grunt watch:dust & grunt watch:testProduction &"

alias grunt-s="grunt connect & grunt pipe"
alias pfft="grunt"

function dumbby() {
   say -v 'pipe organ' "$1" is a dum dum dum dum bee Dum dum bee dum dum dum dum bee dum bee dum dum dum be dum dum dum bee dum bee dum dum bee dummmmmmmmmmmmmmmmm
}

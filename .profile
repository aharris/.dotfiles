export BROWSER=open
export HISTCONTROL=ignoreboth
export HISTSIZE=10000
export PATH="bin:/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="~/node_modules/.bin:$PATH"
export PATH="$PATH:/usr/local/git/bin:/usr/local/share/npm/bin"
export PATH="/usr/local/share/npm/bin:$PATH"

[[ $- == *i* ]]   &&   . ~/.dotfiles/git-prompt.sh
source ~/.dotfiles/git-completion.bash
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" #RVM

alias localip='ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d " " -f2'

alias touch-templates="find ~/Sites/telenet/telenet_dawn/src/templates/dusts |xargs touch"

alias ssh-gateway="ssh -f root@172.24.200.27 -L 8081:172.24.200.27:8081 -N"

alias g="git"
alias gs="git stash"
alias gc="git commit"
alias ga="git add"
alias gst="git status"
alias gfap="git fetch --all --prune"
alias gco="git checkout"

alias cw="compass watch"

alias grunt-s="grunt connect & grunt pipe"
alias pfft="grunt"

alias simulator="open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app"

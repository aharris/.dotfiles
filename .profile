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

alias touch-templates="find ~/Sites/telenet/telenet_dawn/src/templates/dusts |xargs touch"
alias dawn2-templates="find ~/Sites/telenet/dawn2/src/templates/dusts |xargs touch"

alias stb-ssh="ssh -f root@172.24.20.78 -L 8081:172.24.20.78:8081 -N"

alias g="git"
alias gs="git stash"
alias gsp="git stash pop"
alias gc="git commit -m"
alias ga="git add"
alias gst="git status"

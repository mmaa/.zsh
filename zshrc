autoload -U compinit
compinit

setopt promptsubst
autoload -U promptinit
promptinit
prompt wunjo

export EDITOR=vim
bindkey -v

export CLICOLOR=1;

export HISTFILE=$HOME/.history
export HISTSIZE=99999
export SAVEHIST=99999

setopt hist_ignore_dups # ignore duplication command history list
setopt share_history # share command history data

setopt hist_verify
setopt inc_append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_space

setopt SHARE_HISTORY
setopt APPEND_HISTORY

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;32'

export PGDATA='/usr/local/var/postgres/'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ls='ls -F -1'
alias la='ls -F -1 -A'
alias ll='ls -F -A -o -h'
alias top='top -o cpu -s 2 -i 2'
alias pg='ps aux | grep'

alias gs='git status'
alias ga='git add'
alias gpl='git pull'
alias gps='git push'
alias gl='git lg'
alias gla='git lga'
alias gg='git add -u && git add . && git status'
alias gm='git commit -m'
alias gb='git branch'
alias gd='git diff head'
alias gc='git checkout'
alias gf='git flow'
alias gh='github'
alias gr='git reset'
alias gp='git remote prune'

alias ns='sudo kill $(cat /usr/local/nginx/logs/nginx.pid)'
alias nr='sudo kill -HUP $(cat /usr/local/nginx/logs/nginx.pid)'
alias nc='mate /etc/hosts /usr/local/nginx/conf/nginx.conf'

alias bndl='bundle install --binstubs && rbenv rehash'

alias irb='pry'

alias rs='rails server'
alias rc='rails console'
alias rg='rails generate'
alias rr='rails runner'

alias ss='script/server webrick'
alias sc='script/console'
alias sg='script/generate'

alias gmi='gem install'
alias gmu='gem update'

alias ru='rvm get head && rvm reload && rvm 1.9.2@global && gem update && gem update --system && gem cleanup'
alias bu="brew update && brew outdated"

alias check='openssl sha1 -c'

alias hg='cat ~/.history | grep'

alias sshmini='ssh -p 2222 mini@mca520.dyndns.org'

alias irssi_start='screen -d -m -S irssi irssi'
alias irssi='screen -r irssi'

alias ytf='youtube-dl -F'
alias ytd='youtube-dl -f'
alias yt='youtube-dl -f 22'

alias alpha='ssh ubuntu@app1.alpha.ec2.oib.com'
alias nedry='ssh ubuntu@nedry.prod.ec2.oib.com'
alias jenkins='ssh -l ubuntu -L 8080:localhost:8080 ubuntu@ec2-50-17-93-145.compute-1.amazonaws.com'

export NODE_PATH=/usr/local/lib/node_modules:$NODE_PATH
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH=./bin:$PATH

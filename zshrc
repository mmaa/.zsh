autoload -U compinit
compinit

setopt promptsubst
autoload -U promptinit
promptinit
prompt wunjo

source ~/.zsh/func/git-flow-completion.zsh

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

alias .='pwd'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ls='ls -F'
alias la='ls -F -A'
alias ll='ls -F -A -o -h'
alias top='top -o cpu -s 2 -i 2'
alias pg='ps aux | grep'

alias gs='git status'
alias ga='git add'
alias gl='git lg'
alias gla='git lga'
alias gg='git add -u && git add . && git status'
alias gm='git commit -m'
alias gb='git branch'
alias gd='git diff head'
alias gc='git checkout'
alias gf='git flow'

alias ns='sudo kill $(cat /usr/local/nginx/logs/nginx.pid)'
alias nr='sudo kill -HUP $(cat /usr/local/nginx/logs/nginx.pid)'
alias nc='mate /etc/hosts /usr/local/nginx/conf/nginx.conf'

alias rs='rails server'
alias rc='rails console'
alias rg='rails generate'

alias ss='script/server webrick'
alias sc='script/console'
alias sg='script/generate'

alias gmi='gem install'
alias gmu='gem update'

alias ru='rvm get head && rvm reload'
alias bu="brew update && brew outdated"

alias check='openssl sha1 -c'

alias hg='cat ~/.history | grep'

alias alpha='ssh root@app.mmaa.ec2.oib.com'
alias alphadeploy='HOSTS=app.mmaa.ec2.oib.com cap production deploy:frontend'
alias staging='ssh root@ec2-184-72-188-76.compute-1.amazonaws.com'
alias hudson='ssh -l root -L 8080:localhost:8080 collect.prod.ec2.oib.com'
alias jenkins='ssh -l ubuntu -L 8080:localhost:8080 ubuntu@ec2-50-17-93-145.compute-1.amazonaws.com'
alias hudson-ct='ssh -l root -L 8080:localhost:8080 50.16.230.56'
alias zenoss='ssh -l root -L 9090:localhost:9090 collect.prod.ec2.oib.com'
alias inboxscore='ssh root@app1.is.prod.ec2.oib.com'
alias subjectlines='ssh root@app1.sl.prod.ec2.oib.com'

export PATH=/usr/local/bin:/usr/local/sbin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

autoload -U compinit
compinit

setopt promptsubst
autoload -U promptinit
promptinit
prompt wunjo

source ~/.zsh/func/git-flow-completion.zsh

export EDITOR='/usr/local/bin/mate -w'

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

alias m="mate ."
alias emacs="/usr/local/Cellar/emacs/HEAD/Emacs.app/Contents/MacOS/Emacs -nw"

alias a="./a.out"

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
alias gh='github'
alias gr='git reset'

alias ns='sudo kill $(cat /usr/local/nginx/logs/nginx.pid)'
alias nr='sudo kill -HUP $(cat /usr/local/nginx/logs/nginx.pid)'
alias nc='mate /etc/hosts /usr/local/nginx/conf/nginx.conf'

alias bndl='bundle install --binstubs && rbenv rehash'

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

alias update_macvim='brew install --force --HEAD macvim --custom-icons --override-system-vim --enable-clipboard'

alias alpha_main='ssh root@app1.alpha.ec2.oib.com'
alias alpha_main_deploy='HOSTS=app1.alpha.ec2.oib.com cap production deploy:frontend'
alias alpha_mmaa='ssh root@app.mmaa.ec2.oib.com'
alias alpha_mmaa_deploy='HOSTS=app.mmaa.ec2.oib.com cap production deploy:frontend'
alias staging='ssh root@ec2-184-72-188-76.compute-1.amazonaws.com'
alias jenkins='ssh -l ubuntu -L 8080:localhost:8080 ubuntu@ec2-50-17-93-145.compute-1.amazonaws.com'
alias zenoss='ssh -l root -L 9090:localhost:9090 collect.prod.ec2.oib.com'
alias inboxscore='ssh root@app1.is.prod.ec2.oib.com'
alias subjectlines='ssh root@app1.sl.prod.ec2.oib.com'
alias slalpha='ssh root@app1.sl.alpha.ec2.oib.com'
alias slalphadeploy='cap production deploy HOSTS=app1.sl.alpha.ec2.oib.com'
alias scheduler='ssh root@ec2-75-101-236-127.compute-1.amazonaws.com'
alias oibme='ssh root@oibme1.prod.ec2.oib.com'

export NODE_PATH=/usr/local/lib/node_modules:$NODE_PATH
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

eval "$(rbenv init -)"
export PATH=./bin:$PATH

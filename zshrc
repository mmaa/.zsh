setopt promptsubst

# Load the prompt theme system
autoload -U promptinit
promptinit

# Use the wunjo prompt theme
prompt wunjo

# export PS1=$'%(#.%{\e[0;31m%}%~.%{\e[0;34m%}%~)%{\e[0m%}%# '
# export PS1=$'\n%(#.%{\e[0;31m%}%~.%{\e[0;34m%}%~)\n%{\e[0m%}%# '

export HISTSIZE=99999
export SAVEHIST=99999
export HISTFILE=~/.history
setopt append_history
setopt inc_append_history
setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt hist_ignore_space
setopt hist_no_store
setopt hist_no_functions
setopt hist_save_no_dups

export EDITOR='mate -w'
export PGDATA='/usr/local/var/postgres/'

alias ..='cd ..'
alias ls='ls -F'
alias la='ls -F -A'
alias ll='ls -F -A -o -h'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias top='top -o cpu -s 2 -i 2'
alias pg='ps aux | grep'

alias gs='git status'
alias ga='git add'
alias gl='git log'
alias gg='git add -u && git add . && git status'
alias gm='git commit -m'
alias gb='git branch'
alias gd='git diff head'
alias gc='git checkout'

alias ns='sudo kill $(cat /usr/local/var/run/nginx.pid)'
alias nr='sudo kill -HUP $(cat /usr/local/var/run/nginx.pid)'
alias nc='mate /etc/hosts /usr/local/etc/nginx/nginx.conf'

alias rs='rails server'
alias rc='rails console'
alias rg='rails generate'

alias ss='script/server'
alias sc='script/console'
alias sg='script/generate'

alias gmi='gem install'
alias gmu='gem update'

alias ru='rvm update --head && rvm reload'
alias bu='brew update'

alias check='openssl sha1 -c'

alias hg='cat ~/.history | grep'

alias hudson='ssh -l root -L8080:localhost:8080 collect.prod.ec2.oib.com'
alias zenoss='ssh -l root -L9090:localhost:9090 collect.prod.ec2.oib.com'

export PATH=/usr/local/nginx:/usr/local/bin:/usr/local/sbin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

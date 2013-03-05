autoload -U compinit
compinit

setopt promptsubst
autoload -U promptinit
promptinit
prompt wunjo

export EDITOR='vim'
alias m='mvim .'

bindkey -e

export CLICOLOR=1;

export HISTFILE=$HOME/.history
export HISTSIZE=99999
export SAVEHIST=99999

setopt hist_ignore_dups
setopt hist_verify
setopt inc_append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_space
setopt append_history

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

alias tm='tmux attach || tmux -u'

alias tag='ctags -R .'

alias gs='git status'
alias gpl='git pull --prune'
alias gps='git push'
alias gpz='gpl && gps'
alias gl='git lg'
alias gla='git lga'
alias gg='git add . && git add -u && git status'
alias gm='git commit'
alias gb='git branch'
alias gd='git diff head'
alias gdt='git difftool head'
alias gc='git checkout'
alias gpr='hub pull-request'
alias ggrep='git grep'

alias rs='rails server'
alias rc='rails console'
alias rg='rails generate'
alias rr='rails runner'

alias resetopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'

alias bu="brew update && brew outdated"
alias updatemacvim='brew remove macvim && brew install macvim --HEAD --override-system-vim'

alias hg='cat ~/.history | grep'

alias sshmini='ssh -p 2222 mini@mca520.dyndns.org'

alias ytf='youtube-dl -F'
alias ytd='youtube-dl -t -f'
alias yt='cd ~/Desktop && youtube-dl -f 22 -t'

export PATH=/usr/local/bin:/usr/local/sbin:$PATH

export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH=./bin:$PATH

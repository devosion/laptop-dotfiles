# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## alias definitions
# ls definitions
alias ls='ls -h --color'
alias ll='ls -l'
alias lsl='ls -l'
alias sl='ls'
alias l='ls'

# ls -a definitions
alias lsa='ls -a'
alias la='ls -a'
alias c='clear'
alias tmx='tmux'
alias cd..='cd ..'

# ls -la definitions
alias lsla='ls -la'

# cd definitions
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# source .bashrc alias
alias rbash='source ~/.bashrc'
alias rzsh='source ~/.zshrc'

# xrdb .Xresources alias
alias xrdbx='xrdb ~/.Xresources'

# pacman aliases
alias pacupdate='sudo pacman -Syu'
alias pacsearch='pacman -Ss'
alias pacinstall='sudo pacman -S'
alias pacremove='sudo pacman -R'

# grab_temp.sh alias
alias temp='~/.bin/grab-temp.sh'

# wine alias
alias win='wine'

# openvpn alias
alias btguard='sudo openvpn /etc/openvpn/btguard.conf'

# export PS1
#export PS1='\[\033[01;35m\]\u@\h \[\033[00,31m\]\W > \[\033[00m\]'
#export PS1='\e[01;31m\]\u@\h \[\033[00,33m\]\W > \[\033[00m\]'
export PS1='\[\e[01;31m\][\w]\[\e[01;34m\] > \[\e[m\]'
#export PS1='\[\e[01;33m\][\w]\[\e[01;34m\] > \[\033[00m\]'

export LS_COLORS='di=1:fi=0:ex=36'
export PATH=$PATH:~/.bin
export EDITOR=vim
export QUOTING_STYLE=literal

# load script for quotes
#quote-test.sh


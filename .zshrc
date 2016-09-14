# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
zstyle :compinstall filename '/home/devosion/.zshrc'

# setup autoloads
autoload -Uz compinit && compinit
autoload -U colors && colors

# define variables to export
export PATH=$PATH:$HOME/.bin
export EDITOR=vim
export QUOTING_STYLE=literal
export LS_COLORS

# path for oh-my-zsh
export ZSH=$HOME/.ohmyzsh
#zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
#zstyle ':completion:*' list-colors 'di=1:31;fi=1:ex=36:ln=33;104:cd=93;102:bd=33;102:so=33;102:pi=33;102:'

# define zsh plugins
plugins=(git)

# load oh-my-zsh.sh 
source $ZSH/oh-my-zsh.sh

## alias and function definitions
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
alias rzsh='source ~/.zshrc'

# xrdb .Xresources alias
alias xrdbx='xrdb ~/.Xresources'

# pacman aliases
alias pacupdate='sudo pacman -Syu'
alias pacsearch='pacman -Ss'
alias pacinstall='sudo pacman -S'
alias pacremove='sudo pacman -R'

# wine alias
alias win='wine'

# openvpn alias
alias btguard='sudo openvpn /etc/openvpn/btguard.conf'

# sysctl alias
alias syctl='systemctl'

# mfw alias
alias mfw='echo :O'

# rm -rf function
#function rm () {
#    if [[ $1 == "-rf" ]]; then
#        echo "Nope."
#    else
#        echo "Yup."
#    fi
#}


# zsh settings
# Uncomment the following line to disable auto-setting terminal title.
# fixes cwd showing up in tmux title
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# define ls --color
LS_COLORS='di=1:fi=0:ex=93:ln=31:cd=93;100:bd=32;100:so=34;100:pi=33;100:'

# setup custom prompt
PS1="%{$fg_bold[green]%}[%~] %{$reset_color%}%{$fg_bold[white]%}% > %{$reset_color%}"

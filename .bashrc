#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1='\[\e[38;2;249;178;193m\]󰣇 \[ \e[38;2;255;255;255m\]\w \[\e[38;2;249;178;193m\]❯ \[\e[m\]'
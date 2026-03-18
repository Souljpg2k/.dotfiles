#
# ~/.bashrc
#

#Pywal
(cat ~/.cache/wal/sequences &)

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1='\[\e[38;5;4m\]󰣇 \[ \e[38;5;7m\]\w \[\e[38;5;4m\]❯ \[\e[m\]'
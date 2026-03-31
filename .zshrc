export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

alias f="fastfetch"
alias h="nvim $HOME/.config/hypr/hyprland.conf"
alias r="nvim $HOME/.config/rofi/config.rasi"
alias z="nvim $HOME/.zshrc"

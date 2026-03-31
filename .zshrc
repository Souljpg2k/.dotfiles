export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

alias f="fastfetch"
alias h="nvim $HOME/.config/hypr/hyprland.conf"
alias c="nvim $HOME/.config/hypr/hyprland/colors.conf"
alias k="nvim $HOME/.config/hypr/hyprland/keybinds.conf"
alias a="nvim $HOME/.config/hypr/hyprland/animations.conf"
alias r="nvim $HOME/.config/hypr/hyprland/rule.conf"
alias z="nvim $HOME/.zshrc"
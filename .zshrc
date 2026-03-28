export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

(cat ~/.cache/wal/sequences &)

alias f="fastfetch"
alias h="micro $HOME/.config/hypr/hyprland.conf"
alias r="micro $HOME/.config/rofi/config.rasi"
alias z="micro $HOME/.zshrc"

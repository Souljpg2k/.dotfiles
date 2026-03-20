if status is-interactive
    set -g fish_greeting ""
    cat ~/.cache/wal/sequences
end    

alias fish.config.fish='nvim ~/.config/fish/config.fish'
alias fish.theme='nvim ~/.config/fish/theme.omp.json'
alias kitty.conf='nvim ~/.config/kitty/kitty.conf'
alias rofi.config.rasi='nvim ~/.config/rofi/config.rasi'
alias fastfetch.config.jsonc='nvim ~/.config/fastfetch/config.jsonc'
alias hyprland.conf='nvim ~/.config/hypr/hyprland.conf'
alias hyprpaper.conf='nvim ~/.config/hypr/hyprpaper.conf'
alias animations.conf='nvim ~/.config/hypr/conf.d/animations.conf'
alias general.conf='nvim ~/.config/hypr/conf.d/general.conf'
alias keybinds.conf='nvim ~/.config/hypr/conf.d/keybinds.conf'
alias rule.conf='nvim ~/.config/hypr/conf.d/rule.conf'
alias mako.config='nvim ~/.config/mako/config'
alias waypaper.config.ini='nvim ~/.config/waypaper/config.ini'
alias waybar.config='nvim ~/.config/waybar/config'
alias waybar.style='nvim ~/.config/waybar/style.css'


oh-my-posh init fish --config ~/.config/fish/theme.omp.json | source

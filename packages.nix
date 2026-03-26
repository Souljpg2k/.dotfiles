{ pkgs, ...}:

{
   nixpkgs.config.allowUnfree = true;

   programs.hyprland.enable = true;
   programs.starship.enable = true;
   programs.zsh = {
     enable = true;
     autosuggestions.enable = true;
     autosuggestions.highlightStyle = "fg=cyan";
   };

   environment.stystemPackages = with pkgs; [
     kitty
     swww
     brave
     cava
     waybar
     waypaper
     hyprshot
     hyprpicker
     rofi
     mako
     micro
     fastfetch
     feh
     yazi
     pywal
   ];
}

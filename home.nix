{ config, pkgs, inputs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "sx";
  home.homeDirectory = "/home/sx";

  imports = [
  	# inputs.catppuccin.homeModules.catppuccin
    ./home/packages.nix
    ./home/zsh.nix
    ./home/desktop.nix
    ./home/services.nix
  ];

  home.stateVersion = "26.05"; # Please read the comment before changing.

  home.file = {
    ".config/hypr".source = ./config/hypr;
    ".config/ashell".source = ./config/ashell;
    ".config/alacritty".source = ./config/alacritty;
    ".config/vicinae".source = ./config/vicinae;
    ".config/waybar".source = ./config/waybar;
    ".config/fastfetch".source = ./config/fastfetch;
    # ".config/doom".source = ./config/doom;
    ".config/kitty".source = ./config/kitty;
  };

  programs.home-manager.enable = true;
}

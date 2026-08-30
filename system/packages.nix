{ pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
        wget
        git
        neovim
        pavucontrol
        hyprpaper
        swaybg
        hyprlock
        waybar
        # alacritty
        kitty
        jq
        vicinae
        lxappearance
        wl-clipboard
        xdg-user-dirs
        python3
        xwayland-satellite
 ];

  fonts.packages = with pkgs; [
	nerd-fonts.jetbrains-mono
    hack-font
	noto-fonts
 ];
}
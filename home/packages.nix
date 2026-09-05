{ pkgs, inputs, ...}:

{
  home.packages = [
    pkgs.btop
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    pkgs.dconf-editor
    pkgs.unzip
    pkgs.fastfetch
    pkgs.dracula-icon-theme
    pkgs.adwaita-icon-theme
    pkgs.gnome-themes-extra
    pkgs.thunar
    pkgs.grim
    pkgs.yazi
    pkgs.mousepad
    pkgs.ristretto
    pkgs.catfish
    pkgs.xarchiver
    pkgs.thunar-archive-plugin
    pkgs.thunar-volman
    pkgs.thunar-media-tags-plugin
    pkgs.tumbler
    pkgs.lsd
    (pkgs.catppuccin-gtk.override {
    	accents = [ "pink" ];
	    size = "standard";
	    variant = "macchiato";
    })
    pkgs.hyprshot
    pkgs.bat
    pkgs.glow
    pkgs.dysk
    pkgs.vscodium
    pkgs.zed-editor
    pkgs.ncpamixer
    pkgs.tldr
    pkgs.emacs
    pkgs.go
    pkgs.gopls
    pkgs.kotlin
    pkgs.jdk21
    pkgs.nodejs
    pkgs.dotnet-sdk_10
    pkgs.dotnet-runtime_10
    # pkgs.gcc
    pkgs.clang
    pkgs.dotnet-repl
    pkgs.zoxide
    pkgs.prismlauncher
    pkgs.cider-2
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.areofyl-fetch.packages.${pkgs.stdenv.hostPlatform.system}.default
    pkgs.nvtopPackages.nvidia
    pkgs.mpv
    pkgs.qbittorrent
    pkgs.fzf
    pkgs.ripgrep
    pkgs.fd
  ];
}

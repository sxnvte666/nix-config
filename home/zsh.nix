{ pkgs, ...}:

{
    programs.zsh = {
  	enable = true;
    shellAliases = {
      # nix related
      nixupdate = "sudo nixos-rebuild switch --flake ~/nix-config#nixos";
      nixcleanup = "nix-collect-garbage && sleep 1 && nix store optimise";
      bootclean = "sudo nixos-rebuild boot";
      # easy editing each configs
      homecfg = "nvim ~/nix-config/home.nix";
      nixcfg = "nvim ~/nix-config/configuration.nix";
      homepkgs = "nvim ~/nix-config/home/packages.nix";
      nixpkgs = "nvim ~/nix-config/system/packages.nix";
      nixservices = "nvim ~/nix-config/system/services.nix";
      nixdesktop = "nvim ~/nix-config/system/desktop.nix";
      zshcfg = "nvim ~/nix-config/home/zsh.nix";
      homeservices = "nvim ~/nix-config/home/services.nix";
      homedesktop = "nvim ~/nix-config/home/desktop.nix";
      homeupdate = "home-manager switch --flake ~/nix-config/#sx";
      # WM related
      hyprcfg = "nvim ~/nix-config/config/hypr/hyprland.lua";
      niricfg = "nvim ~/.config/niri/config.kdl";
      vicinaereload = "vicinae server --replace &";
      #cli
      ls = "lsd";
      nv = "nvim";
      ff = "fastfetch";
      amix = "ncpamixer";
      nf = "nerdfetch";
      yy = "yazi";
      # udiskie
      usbmount = "udisksctl mount -b /dev/sdb1";
      usbumount = "udisksctl unmount -b /dev/sdb1";
      usboff = "udisksctl power-off -b /dev/sdb1";
      # dotnet
      dr = "dotnet run";
      ds = "dotnet-repl";
      dnbuild = "dotnet publish -r linux-x64 p:PublishAot=true -c Release";
     };

    oh-my-zsh = {
      enable = true;
      theme = "minimal";
      plugins = ["colored-man-pages" "copyfile" "zoxide" "git" "sudo" "extract"];
    };
  };
}

{ config, lib, pkgs, inputs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./system/desktop.nix
      ./system/packages.nix
      ./system/services.nix
      inputs.home-manager.nixosModules.default
    ];

  # adding overlay for cachyos kernel
  nixpkgs.overlays = [
    inputs.nix-cachyos-kernel.overlays.pinned
  ];

  # graphics drivers
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  services.xserver.videoDrivers = ["nvidia"];

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    open = true;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };

  system.nixos.label = "cachyos-kernel";

  # bootloader
  boot.loader.systemd-boot.enable = false;
  boot.loader.limine.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # kernel selection
  # standard kernel
  #boot.kernelPackages = pkgs.linuxPackages_latest;

  # cachyos kernel
  boot.kernelPackages = pkgs.cachyosKernels.linuxPackages-cachyos-latest;

  networking.hostName = "nixos"; 

  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Warsaw";

  i18n.defaultLocale = "en_US.UTF-8";

  services.xserver.xkb.layout = "pl";

  users.users.sx = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ]; 
    packages = with pkgs; [
      tree
    ];
    shell = pkgs.zsh;
  };

  programs.zsh.enable = true;

  home-manager = {
    extraSpecialArgs = { inherit inputs;};
    users = {
      "sx" = import ./home.nix;
    };
    useGlobalPkgs = true;
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # settings for compiling (kernel the most)
  nix.settings = {
    cores = 0; # use all cores
    max-jobs = 1;
  };

  zramSwap = {
    enable = true;
    memoryPercent = 100;
  };

  programs.ccache.enable = true;

  fonts.fontconfig.defaultFonts = {
  	serif = [ "JetBrainsMono Nerd Font" ];
	  sansSerif = [ "JetBrainsMono Nerd Font" ];
  };

  system.stateVersion = "26.05"; # Did you read the comment?

}

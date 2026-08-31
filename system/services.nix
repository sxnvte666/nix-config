{
    # audio
    services.pulseaudio.enable = false;
    services.pipewire = {
      enable = true;
      pulse.enable = true;
    };

    services.flatpak.enable = true;
    services.displayManager.ly.enable = true;
    services.dbus.enable = true;
    services.dbus.implementation = "broker";

    nixpkgs.config.allowUnfree = true;

    programs.gamemode.enable = true;

    programs.nix-ld.enable = true;

    powerManagement.cpuFreqGovernor = "performance";

    programs.virt-manager.enable = true;
    users.groups.libvirtd.members = ["sx"];
    virtualisation.libvirtd.enable = true;
    virtualisation.spiceUSBRedirection.enable = true;

    # security.doas.enable = true;
    security.sudo.enable = true;
    /* security.doas.extraRules = [{
        users = ["sx"];
        keepEnv = true;
    }];*/

    services.udisks2.enable = true;

    # kde connect
    networking.firewall = rec {
      allowedTCPPortRanges = [ { from = 1714; to = 1764; } ];
      allowedUDPPortRanges = allowedTCPPortRanges; # Same range for UDP discovery
    };
}

{ pkgs, ...}:

{
    services.udiskie = {
    enable = true;
    settings = {
      program_options = {
        file_manager = "/home/sx/.nix-profile/bin/thunar";
      };
    };
  };
  services.kdeconnect = {
    enable = true;
    package = pkgs.kdePackages.kdeconnect-kde; # The modern Qt6-based version
    indicator = true;                          # Show icon in the system tray
  };
}

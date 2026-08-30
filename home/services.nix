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
}
{ ... }:

{
  dconf.settings = {
  	"org/gnome/desktop/interface" = {
		color-scheme = "prefer-dark";
		gtk-theme = "catppuccin-macchiato-pink-standard";
		icon-theme = "Dracula";
		cursor-theme = "Adwaita";
		};
  };

  qt = {
    enable = true;
    style.name = "adwaita-dark";
  };

  fonts = {
  	fontconfig.defaultFonts = {
		serif = [ "JetBrainsMono Nerd Font" ];
		sansSerif = [ "JetBrainsMono Nerd Font"];
		monospace = [ "JetBrainsMono Nerd Font"];
	  };
  };
}
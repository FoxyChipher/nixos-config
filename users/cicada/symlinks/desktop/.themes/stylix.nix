{ pkgs, ... }: {
  stylix = {
    enable = true;
    autoEnable = false;
    polarity = "dark";
    image = ./wallpaper.png;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
    # cursor = {
    #   package = pkgs.bibata-cursors;
    #   name = "Bibata-Modern-Classic";
    #   size = 24;
    # };
    fonts = {
      monospace = { package = pkgs.nerd-fonts.jetbrains-mono; name = "JetBrainsMono Nerd Font Mono"; };
      sansSerif = { package = pkgs.inter; name = "Inter"; };
    };
  };

  extraSpecialArgs = {inherit inputs;};
  users."cicada" = {pkgs, ...}: {
    gtk = {
      # flatpakSupport.enable = true;
      # fonts.enable = true;
      extraCss = ''
        // syntax: css
        // Remove rounded corners
        * {
          border-radius: 0px;
          box-shadow: none;
        }

        .window-frame, .window-frame:backdrop {
          border-style: none;
          margin: 0;
        }

        .header-bar {
          background-image: none;
          background-color: ${vars.style.theme.ui."3"};
          box-shadow: none;
        }
        // You may want to use this if you do not like the double title.
        GtkLabel.title {
            opacity: 0;
        }
      '';
      enable = true;
      gtk3 = {
        extraConfig.gtk-application-prefer-dark-theme = true;
      };
    };
  };
}

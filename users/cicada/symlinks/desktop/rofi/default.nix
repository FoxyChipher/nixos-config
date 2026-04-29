{ config, pkgs, lib, inputs, ... }: {
 	environment.systemPackages = with pkgs; [ rofi rofi-calc ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };

    users."cicada" =
      { config, pkgs, lib, ... }: {
        xdg.configFile."rofi" = {
          source = ./config;
          recursive = true;
        };

        # ========== wofi ==========
        programs.rofi = { package = pkgs.rofi; };
      };
  };
}

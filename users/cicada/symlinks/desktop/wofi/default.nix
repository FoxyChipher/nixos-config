{ config, pkgs, lib, inputs, ... }: {
 	environment.systemPackages = with pkgs; [ wofi ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };

    users."cicada" =
      { config, pkgs, lib, ... }: {
        xdg.configFile."wofi" = {
          source = ./config;
          recursive = true;
        };

        # ========== wofi ==========
        programs.wofi = { package = pkgs.wofi; };
      };
  };
}

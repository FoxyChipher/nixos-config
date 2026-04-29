{ config, pkgs, lib, inputs, ... }: {
 	environment.systemPackages = with pkgs; [ btop-cuda ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };

    users."cicada" =
      { config, pkgs, lib, ... }: {
        xdg.configFile."btop" = {
          source = ./config;
          recursive = true;
        };

        # ========== btop ==========
        programs.btop = { package = pkgs.btop; };
      };
  };
}

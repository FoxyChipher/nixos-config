{ config, pkgs, lib, inputs, ... }: {
  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users."cicada" =
      { config, pkgs, lib, ... }: {

        xdg.configFile."wlogout" = {
          source = ./config;
          recursive = true;
        };

        # ========== wlogout ==========
        programs.wlogout = {
          package = pkgs.wlogout;
        };
      };
  };
}

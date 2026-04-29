{ config, pkgs, lib, inputs, ... }: {
 	environment.systemPackages = with pkgs; [ kitty ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };

    users."cicada" =
      { config, pkgs, lib, ... }: {
        xdg.configFile."kitty" = {
          source = ./config;
          recursive = true;
        };

        # ========== KITTY ==========
        programs.kitty = { package = pkgs.kitty; };
      };
  };
}

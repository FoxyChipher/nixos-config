{ inputs, ... }:
{
  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users."cicada" =
      { pkgs, ... }: {
        xdg.configFile."waybar" = {
          source = ./config;
          recursive = true;
        };

        # ========== waybar ==========
        programs.waybar = {
          enable = true;
          package = pkgs.waybar;
        };
      };
  };
}

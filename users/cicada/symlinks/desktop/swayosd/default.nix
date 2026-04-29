{ config, pkgs, lib, inputs, ... }: {
  environment.systemPackages = with pkgs; [ swayosd ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users."cicada" =
      { config, pkgs, lib, ... }: {
        xdg.configFile."swayosd" = {
          source = ./config;
          recursive = true;
        };
      };
  };
}

{ config, pkgs, lib, inputs, ... }: {

  home-manager = {
    extraSpecialArgs = { inherit inputs; };

    users."cicada" = { config, pkgs, ... }: {

      # Пакеты
      home.packages = with pkgs; [
        mimeo
      ];

      # Конфиг mimeo
      xdg.configFile."mimeo/associations.txt".source =
        ./associations.txt;

      # Подмена xdg-open
      home.file.".local/bin/xdg-open" = {
        text = ''
          #!/usr/bin/env bash
          exec mimeo "$@"
        '';
        executable = true;
      };
    };
  };
}

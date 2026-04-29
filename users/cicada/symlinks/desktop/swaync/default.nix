{ config, pkgs, lib, inputs, ... }:
{
  # systemd.user.services.niri-flake-polkit.enable = false;
 	environment.systemPackages = with pkgs; [ swaynotificationcenter ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users."cicada" = { config, pkgs, lib, ... }: {
      xdg.configFile."swaync" = {
        source = ./config;
        recursive = true;
      };

      # ========== SWAYNC ==========
      services.swaync = {
        enable = true;
        package = pkgs.swaynotificationcenter;
      };

      # Перезапуск/обновление конфига после активации
      home.activation.reloadSwayNC = lib.mkForce (lib.hm.dag.entryAfter ["writeBoundary"] ''
        if command -v systemctl >/dev/null 2>&1; then
          systemctl --user restart swaync.service 2>/dev/null || true
        fi
      '');
    };
  };
}

{ config, pkgs, lib, inputs, ... }: {
  systemd.user.services.niri-flake-polkit.enable = false;
  programs.niri.enable = true;

	environment.systemPackages = with pkgs; [
		niri-unstable
		xwayland-satellite-unstable
	];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };

    users."cicada" =
      { config, pkgs, lib, ... }: {
        xdg.configFile."niri" = {
          source = ./config;
          recursive = true;
        };

        # ========== NIRI ==========
        programs.niri = {
          package = pkgs.niri-unstable;
        };

        home.activation.reloadNiri = lib.mkForce (
          lib.hm.dag.entryAfter [ "writeBoundary" ] ''
            if command -v niri >/dev/null 2>&1; then
              niri msg action reload-config 2>/dev/null || true
            fi
          ''
        );
      };
  };
}

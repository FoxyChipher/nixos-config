{ ... }: {
  imports = [
    ./boot.nix
    ./linux-kernel.nix
    ./locale.nix
    ./mime.nix
    ./network.nix
    ./nix.nix
    ./nixpkgs.nix
    ./sessionVariables.nix
    ./users.nix
    ./sops.nix
    # ./virtualisation.nix
    # ./zram.nix
  ];

  # # Disable man cache
  # documentation.man.cache.enable = false;

  # # Battery
  # services.upower.enable = true;

  # # Power profiles
  # services.tuned.enable = true;

  # Disable sudo lecture
  security.sudo.extraConfig = ''
    Defaults lecture="never"
  '';

  # # Logind config
  # services.logind.settings.Login = {
  #   HandlePowerKey = "ignore";
  #   HandleLidSwitch = "ignore";
  # };

  # # Enable direnv
  # programs.direnv = {
  #   enable = true;
  #   silent = true;
  #   settings = {
  #     hide_env_diff = true;
  #   };
  # };

}

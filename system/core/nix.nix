{ config, pkgs, inputs, ... }: {
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  nix.package = pkgs.lix;
  nix.settings.experimental-features = ["nix-command" "flakes" "flake-self-attrs"];
  system.stateVersion = "25.11"; # Did you read the comment?
}

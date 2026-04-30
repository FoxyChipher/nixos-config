{ ... }: {
  imports = [
    ./core/default.nix
    ./packages/default.nix
    ./programs/default.nix
    ./security/default.nix
    ./services/default.nix
    # ./virtualisation/default.nix
  ];
}

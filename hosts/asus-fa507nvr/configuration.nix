{ ... }: {
  imports = [
    ./hardware-configuration.nix
    ./hardware/default.nix
    ../../users/cicada.nix
  ];
}

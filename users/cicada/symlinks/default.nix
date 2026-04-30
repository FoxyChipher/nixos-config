{ ... }: {
  imports = [
    ./local/default.nix
    ./desktop/default.nix
  ];
  virtualisation.incus.enable = true;
  networking.nftables.enable = true;
}

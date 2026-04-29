{ pkgs, ... }: {
  imports = [
    ./polkit.nix
  ];

  environment.systemPackages = with pkgs; [
    sops
    age
    ssh-to-age
  ];
}

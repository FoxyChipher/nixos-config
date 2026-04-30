{ ... }: {
  imports = [
    ./btop
    ./python/python.nix
    ./steam/default.nix
    ./dconf.nix
    ./dolphin.nix
    ./git.nix
    ./gnupg.nix
    # ./llama-cpp.nix
    ./mtr.nix
    ./nix-ld.nix
    ./obs-studio.nix
    ./throne.nix
    ./noctalia/default.nix
    # ./spicetify.nix
  ];
}

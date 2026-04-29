{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    nh
    tree
    ncdu

    # glib
    glib

    # Nix LSPs
    nil
    nixd
    nixfmt

    # nvfetcher
    nvfetcher

    fastfetch
    wl-clipboard

    # xwayland theming
    # xsettingsd
    # xrdb
  ];

  environment.pathsToLink = [
    "/share/xdg-desktop-portal"
    "/share/applications"
    "/share/fish"
  ];
}

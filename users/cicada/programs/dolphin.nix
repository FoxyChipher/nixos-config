{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    kdePackages.dolphin
    kdePackages.kio-extras
    kdePackages.ark
    kdePackages.breeze
    kdePackages.kde-cli-tools
    kdePackages.systemsettings

    zip
    unzip
    p7zip

    jmtpfs
    libmtp
  ];

  # xdg.portal = {
  #   enable = true;
  #   extraPortals = [ pkgs.kdePackages.xdg-desktop-portal-kde ];
  # };
}

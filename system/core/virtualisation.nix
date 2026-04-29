{ config, pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    virtualbox
  ];

  virtualisation.virtualbox.host.enable = true;
  virtualisation.virtualbox.host.enableExtensionPack = true;

  users.users.cicada.extraGroups = [ "vboxusers" ];

  boot.kernelModules = [
    "vboxdrv"
    "vboxnetflt"
    "vboxnetadp"
  ];

  # Docker + NVIDIA support
  virtualisation.docker = {
    enable = true;
    enableNvidia = true;
  };
}

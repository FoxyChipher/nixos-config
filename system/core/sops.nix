{ config, ... }: {
  sops = {
    defaultSopsFile = ../../secrets/secrets.yaml;
    defaultSopsFormat = "yaml";
    age.keyFile = "/home/cicada/.config/sops/age/keys.txt";

    secrets = {
      "user-password" = {};
      "wifi-home" = {
        path = "/etc/NetworkManager/system-connections/home-wifi.nmconnection";
        mode = "0600";
      };
      "timezone" = {};
    };
  };
}

{ config, ... }: {
  sops = {
    defaultSopsFile = ../../secrets/secrets.yaml;
    defaultSopsFormat = "yaml";
    age.keyFile = "/home/cicada/.config/sops/age/keys.txt";

    secrets = { };
    };
  };
}

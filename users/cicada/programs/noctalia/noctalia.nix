<<<<<<< HEAD
{ ... }: {
  home-manager.users.drfoobar = { 
    imports = [ 
      inputs.noctalia.homeModules.default
    ]; 
  }; 
=======
{ pkgs, inputs, ... }: {
  #  environment.systemPackages = with pkgs; [
  #    noctalia-shell
  #  ];

  
  home-manager.users.cicada = {
    imports = [
      inputs.noctalia.homeModules.default
    ];
  };
>>>>>>> c76a04e (Add noctalia configuration and restructure imports in flake.nix and default.nix)
}
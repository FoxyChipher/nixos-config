{ ... }: {
  home-manager.users.drfoobar = { 
    imports = [ 
      inputs.noctalia.homeModules.default
    ]; 
  }; 
}
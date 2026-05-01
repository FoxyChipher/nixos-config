{ pkgs, inputs, ... }: {
   environment.systemPackages = with pkgs; [
     noctalia-shell
   ];

  
  # home-manager.users.cicada = {
  #   imports = [
  #     inputs.noctalia.homeModules.default
  #   ];
  # };
}
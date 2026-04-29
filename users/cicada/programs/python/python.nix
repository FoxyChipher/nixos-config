{ pkgs, inputs, ... }: {
   environment.systemPackages = with pkgs; [
     pipx
     python313Packages.pynvim
     python313Packages.rstr
   ];
}

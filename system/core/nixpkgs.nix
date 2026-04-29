{ inputs, pkgs, ... }: {
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  # ========== NIXPKGS ==========
  nixpkgs = {
    overlays = [
      inputs.niri.overlays.niri
      # inputs.dolphin-overlay.overlays.default
    ];
  };
}

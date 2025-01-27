{ config, pkgs, inputs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  nixpkgs.overlays = [
    inputs.hyprpanel.overlay
    inputs.nur.overlays.default
    inputs.polymc.overlay
    inputs.rust-overlay.overlays.default
  ];
}

{
  description = "NixOS Configuration";

  inputs = {
      nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
      home-manager.url = "github:nix-community/home-manager";
      home-manager.inputs.nixpkgs.follows = "nixpkgs";
      ayugram-desktop.url = "github:/ayugram-port/ayugram-desktop/release?submodules=1";
      cachix.url = "github:cachix/cachix";
      wezterm.url = "github:wez/wezterm?dir=nix";
      stylix.url = "github:danth/stylix";
      hyprland.url = "github:hyprwm/Hyprland";
      hyprpolkitagent.url = "github:hyprwm/hyprpolkitagent";
      hyprpanel.url = "github:Jas-SinghFSU/HyprPanel";
      nur.url = "github:nix-community/NUR";
      apple-fonts.url = "github:Lyndeno/apple-fonts.nix";
      polymc.url = "github:PolyMC/PolyMC";
      rust-overlay.url = "github:oxalica/rust-overlay";
  };

  outputs = inputs@{ nixpkgs, ... }:
  {
    nixosConfigurations.rus07tam-desktop = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };
      modules = [
        inputs.home-manager.nixosModules.home-manager
        inputs.stylix.nixosModules.stylix
        ./hosts/rus07tam-desktop/configuration.nix
      ];
    };
  };
}

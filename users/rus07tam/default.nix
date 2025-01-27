{ pkgs, inputs, ... }:

{
  users.users.rus07tam = {
    isNormalUser = true;
    description = "rus07tam";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  home-manager.users.rus07tam = import ./home.nix { inherit pkgs inputs; };
}

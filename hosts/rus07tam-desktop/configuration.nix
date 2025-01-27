{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix

    # system modules
    ./../../modules/console
    ./../../modules/fonts
    ./../../modules/home-manager
    ./../../modules/i18n
    ./../../modules/networking
    ./../../modules/nix
    ./../../modules/nixpkgs
    ./../../modules/sound
    ./../../modules/stylix
    ./../../modules/time
    ./../../modules/utils
    ./../../modules/xdg-portal

    # users
    ./../../users/rus07tam
  ];

  services.xserver.xkb = {
    layout = "ru";
    variant = "";
  };

  environment.systemPackages = with pkgs; [
    dunst
    libnotify
    wlogout
    busybox
  ];

  programs.nix-ld.enable = true;

  hardware = {
    graphics.enable = true;

    nvidia.modesetting.enable = true;

    opentabletdriver.enable = true;
    opentabletdriver.daemon.enable = true;
  };

  services.gnome.gnome-keyring.enable = true;

  system.stateVersion = "24.11";
}

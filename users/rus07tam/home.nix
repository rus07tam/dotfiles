{ pkgs, inputs, ... }:

{
  imports = [
    ./fastfetch
    ./git
    ./hypridle
    ./hyprland
    ./hyprlock
    ./hyprpanel
    ./hyprpaper
    ./kitty
    ./nixvim
    ./java
    ./python
    ./rust
    ./wofi
    ./yazi
    ./zsh
  ];

  home.username = "rus07tam";
  home.homeDirectory = "/home/rus07tam";
  home.stateVersion = "24.11";
  home.sessionVariables.SHELL = "${pkgs.zsh}/bin/zsh";

  home.packages = with pkgs; [
    android-tools
    bun
    dolphin
    eza
    firefox
    google-chrome
    inputs.ayugram-desktop.packages.${pkgs.system}.ayugram-desktop
    inputs.wezterm.packages.${pkgs.system}.default
    inkscape
    logisim-evolution
    nodejs_23
    openssl
    openssl.dev
    osu-lazer-bin
    polymc
    qemu
    vscodium
    yarn
  ];
}

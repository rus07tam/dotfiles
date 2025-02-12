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
    vscodium
    android-tools
    qemu
    google-chrome
    firefox
    logisim-evolution
    inputs.ayugram-desktop.packages.${pkgs.system}.ayugram-desktop
    inputs.wezterm.packages.${pkgs.system}.default
    osu-lazer-bin
    dolphin
    polymc
    nodejs_23
    yarn
    bun
    eza
    openssl
  ];
}

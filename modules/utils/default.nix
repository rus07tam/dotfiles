{ pkgs, config, ... }:
let
  keyboardLayout = "ru";
in {
  services = {
    gnome.gnome-keyring.enable = true;
  };

  environment.variables = {
    XDG_DATA_HOME = "$HOME/.local/share";
    PASSWORD_STORE_DIR = "$HOME/.local/share/password-store";
    EDITOR = "nvim";
  };

  services.libinput.enable = true;
  programs.dconf.enable = true;
  services = {
    dbus.enable = true;
    gvfs.enable = true;
    upower.enable = true;
    power-profiles-daemon.enable = true;
    udisks2.enable = true;
  };

  documentation = {
    enable = true;
    doc.enable = false;
    man.enable = true;
    dev.enable = false;
    info.enable = false;
    nixos.enable = false;
  };

  environment.systemPackages = with pkgs; [
    fd
    bc
    gcc
    git-ignore
    xdg-utils
    wget
    curl
  ];
}
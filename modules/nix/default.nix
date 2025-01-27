{ config, pkgs, ... }:

{
  nix = {
    settings = {
      experimental-features = [ "nix-command" "flakes" ];
      substituters = [
        "https://cache.garnix.io"
        "https://hyprland.cachix.org"
        "https://prismlauncher.cachix.org"
      ];
      trusted-public-keys = [
        "cache.garnix.io:CTFPyKSLcx5RMJKfLo5EEPUObbA78b0YQ2DTCJXqr9g="
        "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
        "prismlauncher.cachix.org-1:9/n/FGyABA2jLUVfY+DEp4hKds/rwO+SCOtbOkDzd+c="
      ];
    };
  };
}
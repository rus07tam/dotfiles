{ pkgs, ... }:

let
  additionalJDKs = with pkgs; [
    jdk8
    jdk23
  ];
in
{
  home.sessionPath = [ "$HOME/.jdks" ];
  home.file = builtins.listToAttrs (map (jdk: {
    name = ".jdks/${jdk.name}";
    value = { source = jdk; };
  }) additionalJDKs);
}

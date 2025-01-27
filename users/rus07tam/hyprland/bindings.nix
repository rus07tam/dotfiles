{ ... }: {
  wayland.windowManager.hyprland.settings = {
    bind = [
      "$mod,T, exec, kitty"

      # window
      "$mod,Q, killactive,"
      "$mod,F, togglefloating,"
      "$mod,M, exit"
      "$mod,SPACE, fullscreen"

      # apps
      "$mod,E, exec, wofi"

      # focus
      "$mod,left, movefocus, l"
      "$mod,right, movefocus, r"
      "$mod,up, movefocus, u"
      "$mod,down, movefocus, d"

      # "$shiftMod,up, focusmonitor, -1" # Focus previous monitor
      # "$shiftMod,down, focusmonitor, 1" # Focus next monitor
      # "$shiftMod,left, layoutmsg, addmaster" # Add to master
      # "$shiftMod,right, layoutmsg, removemaster" # Remove from master

      # hyprshot
      "$mod,PRINT, exec, hyprshot -m window -o ~/Screenshots" # select window
      ",PRINT, exec, hyprshot -m region -o ~/Screenshots" # select region
      "ALT,PRINT, exec, hyprshot -m window -m active -o ~/Screenshots" # current window

    ] ++ (builtins.concatLists (builtins.genList (i:
      let ws = i + 1;
      in [
        "$mod,code:1${toString i}, workspace, ${toString ws}"
        "$mod SHIFT,code:1${toString i}, movetoworkspace, ${toString ws}"
      ]) 9));

    bindm = [
      "$mod,mouse:272, movewindow" # Move Window (mouse)
      "$mod,R, resizewindow" # Resize Window (mouse)
    ];

    # bindl = [
    #   ",XF86AudioMute, exec, sound-toggle" # Toggle Mute
    #   ",XF86AudioPlay, exec, ${pkgs.playerctl}/bin/playerctl play-pause" # Play/Pause Song
    #   ",XF86AudioNext, exec, ${pkgs.playerctl}/bin/playerctl next" # Next Song
    #   ",XF86AudioPrev, exec, ${pkgs.playerctl}/bin/playerctl previous" # Previous Song
    #   ",switch:Lid Switch, exec, ${pkgs.hyprlock}/bin/hyprlock" # Lock when closing Lid
    # ];

  };
}

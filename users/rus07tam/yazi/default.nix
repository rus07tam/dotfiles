{
  programs.yazi = {
    enable = true;
    # enableZshIntegration = true;

    settings = {
      log = { enabled = false; };
      manager = {
        show_hidden = true;
        sort_dir_first = true;
        sort_reverse = true;
      };
    };
  };
}
{
  programs.git = {
    enable = true;
    extraConfig = {
      http.postBuffer = "524288000";
      core.compression = "0";
    };

    userName = "Rustam Efimov";
    userEmail = "rus07tam.uwu@gmail.com";
  };
}
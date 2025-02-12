{ inputs, ...}:

{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
    ./plugins/ui.nix
  ];
  
  programs.nixvim = {
    enable = true;

    colorschemes.catppuccin.enable = true;
    plugins.lualine.enable = true;
    keymaps = [
      {
        mode = "n";
        key = "j";
        action = "h";
      }
      {
        mode = "n";
        key = "k";
        action = "j";
      }
      {
        mode = "n";
        key = "l";
        action = "k";
      }
      {
        mode = "n";
        key = ";";
        action = "l";
      }
    ];
  };
}

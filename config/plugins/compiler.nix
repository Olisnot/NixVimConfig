{
  keymaps = [
    {
      action = "<cmd>CompilerToggleResults<CR>";
      key = "<leader>c";
      mode = [ "n" ];
    }
  ];
  plugins = {
    compiler.enable = true;
    overseer.enable = true;
  };
}

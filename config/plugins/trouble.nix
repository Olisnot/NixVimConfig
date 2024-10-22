{
  keymaps = [
    {
      action = "<cmd>Trouble diagnostics<CR>";
      key = "<leader>t";
      mode = [ "n" ];
    }
  ];
  plugins.trouble = {
    enable = true;
    settings = {
      auto_close = true;
      auto_refresh = true;
      focus = true;
    };
  };
}

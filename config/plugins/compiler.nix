{
  keymaps = [
    {
      action = "<cmd>CompilerToggleResults<CR>";
      key = "<leader>ct";
      mode = [ "n" ];
    }
    {
      action = "<cmd>CompilerOpen<CR>";
      key = "<leader>c";
      mode = [ "n" ];
    }
  ];
  plugins = {
    compiler.enable = true;
    overseer.enable = true;
    dap-lldb.enable = true;
  };
}

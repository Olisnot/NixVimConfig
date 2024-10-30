{
  keymaps = [
    {
      action = "<cmd>Ex<CR>";
      key = "<leader>e";
      mode = [ "n" ];
    }
    {
      action = ":m '>+1<CR>";
      key = "<A-j>";
      mode = [ "n" "v" ];
    }
    {
      action = ":m '<-2<CR>";
      key = "<A-k>";
      mode = [ "n" "v" ];
    }
    {
      action = "<C-d>zz";
      key = "<C-d>";
      mode = [ "n" ];
    }
    {
      action = "<C-u>zz";
      key = "<C-u>";
      mode = [ "n" ];
    }
    {
      action = "nzzzv";
      key = "n";
      mode = [ "n" ];
    }
    {
      action = "Nzzzv";
      key = "N";
      mode = [ "n" ];
    }
    {
      action = "\"_dp";
      key = "<leader>p";
      mode = [ "x" ];
    }
  ];
}

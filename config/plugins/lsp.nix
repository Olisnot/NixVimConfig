{
  plugins.lsp = {
    enable = true;
    keymaps = {
      diagnostic = {
        "<leader>i" = "open_float";
        "<leader>j" = "goto_next";
        "<leader>k" = "goto_prev";
      };
      lspBuf = {
        K = "hover";
        gD = "references";
        gd = "definition";
        gi = "implementation";
        gt = "type_definition";
        "<leader>r" = "rename";
      };
    };
    servers = {
      nixd = {
        enable = true;
        extraOptions = {
          offset_encoding = "utf-8";
        };
        settings = {
          nixpkgs.expr = "import <nixpkgs> {}";
          formatting.command = [ "nixfmt" ];
          options = 
          let
            flake = "(builtins.getFlake \"/nixos\")";
          in
          {
            nixos.expr = "${flake}.nixosConfigurations.default.options";
          };
        };
      };
      bashls.enable = true;
    };
  };
}

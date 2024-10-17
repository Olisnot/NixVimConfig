{
  globalOpts = {
    relativenumber = true;
    nu = true;
    conceallevel = 2;
  };
  globals.mapleader = " ";

  keymaps = [

    {
      action = "<cmd>Ex<CR>";
      key = "<leader>e";
      mode = [ "n" ];
    }
  ];

  colorschemes.modus = {
    enable = true;

    settings = {
      transparent = true;
    };
  };

  plugins = {
    lsp = {
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
        nil_ls.enable = true;
        bashls.enable = true;
        pylyzer.enable = true;
        marksman.enable = true;
      };
    };

    nix.enable = true;
    neoscroll.enable = true;
    otter.enable = true;
    undotree.enable = true;
    web-devicons.enable = true;

    telescope = {
      enable = true;
      keymaps = {
        "<leader>f" = "find_files";
        "<leader>gr" = "live_grep";
        "<leader>gi" = "git_commits";
      };
    };

    treesitter = {
      enable = true;
      settings = {
        ensure_installed = "all";
        highlight.enable = true;
      };
    };

    cursorline = {
      enable = true;
      cursorline = {
        enable = false;
      };
      cursorword = {
        enable = true;
      };
    };

    coq-nvim = {
      enable = true;
      settings = {
        keymap.recommended = true;
        auto_start = "shut-up";
        xdg = true;
      };
    };

    coq-thirdparty.enable = true;


  };
}

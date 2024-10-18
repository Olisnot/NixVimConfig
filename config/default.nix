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

    lualine = {
      enable = true;
      settings = {
          options = {
            icons_enabled = true;
            theme = "wombat";
            component_separators = {
              left = ""; 
              right = "";
            };
            section_separators = { 
              left = ""; 
              right = "";
            };
            always_divide_middle = true;
            globalstatus = false;
            refresh = {
              statusline = 1000;
              tabline = 1000;
              winbar = 1000;
            };
          };
          sections = {
            lualine_a = [ "mode" ];
            lualine_b = ["branch" "diff" "diagnostics"];
            lualine_c = ["filename"];
            lualine_x = ["encoding" "fileformat" "filetype"];
            lualine_y = ["progress"];
            lualine_z = ["location"];
          };
          inactive_sections = {
            lualine_c = ["filename"];
            lualine_x = ["location"];
          };
      };
    };

  };
}

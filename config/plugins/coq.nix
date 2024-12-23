{
  plugins = {
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

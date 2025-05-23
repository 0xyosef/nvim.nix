{
  plugins = {
    copilot-cmp = {
      enable = true;
    };

    copilot-lua = {
      enable = true;
      settings = {
        suggestion = {
          enabled = false;
        };
        panel = {
          enabled = false;
        };
      };
    };
  };

  extraConfigLua = ''
    require("copilot").setup({
      suggestion = { enabled = false },
      panel = { enabled = false },
    })
  '';
}


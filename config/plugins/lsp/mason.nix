{ pkgs, inputs, ... }: {

  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "mason";
      src = inputs.mason;
    })
    (pkgs.vimUtils.buildVimPlugin {
      name = "mason-lspconfig";
      src = inputs.mason-lspconfig;
    })
  ];

  extraConfigLua = ''
    -- Import mason and mason-lspconfig
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")

    -- Enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    -- Setup mason-lspconfig with a list of servers to install
    mason_lspconfig.setup({
      ensure_installed = {
        "tsserver",
        "html",
        "cssls",
        "tailwindcss",
      },
    })
  '';
}

{
  imports = [
    ./comments.nix
    ./leap.nix
    ./harpoon.nix
    ./telescope.nix
    ./treesitter.nix
    ./csv.nix
    ./ai.nix
    ./copilot-cmp.nix
    ./presence.nix
  ];

  plugins = {
    nvim-autopairs.enable = true;
    colorizer.enable = true;
    todo-comments.enable = true;
    undotree.enable = true;
    vim-surround.enable = true;
    tmux-navigator = {
      enable = true;
      settings.no_mappings = 1; # remove all mappings
      keymaps = [
        {
          mode = "n";
          action = "left";
          key = "<C-h>";
        }
        {
          mode = "n";
          action = "down";
          key = "<C-j>";
        }
        {
          mode = "n";
          action = "up";
          key = "<C-k>";
        }
        {
          mode = "n";
          action = "right";
          key = "<C-l>";
        }
      ];
    };
  };
}

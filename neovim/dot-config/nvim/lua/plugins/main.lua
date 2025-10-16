return {

  { import = "plugins.lang" },
  -- lazy.nvim
  {
    "folke/snacks.nvim",
    ----@type --snacks.Config
    opts = {
      rename = {},
      bigfile = {},
      scope = {},
    },
  },

  {
    "catppuccin/nvim",
  },

  { "LazyVim/LazyVim", opts = {
    colorscheme = "catppuccin-mocha",
  } },
  { "wakatime/vim-wakatime", lazy = false },
  { "akinsho/git-conflict.nvim", version = "*", config = true },
  {
    "ibhagwan/fzf-lua",
    ---@module "fzf-lua"
    ---@type fzf-lua.Config
    opts = {
      setup = { files = { hidden = false }, grep = { hidden = false } },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    ---@module "neo-tree"
    ---@type neotree.Config
    opts = {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
        },
      },
    },
  },
}

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

  { "Everblush/nvim", name = "everblush" },
  { "EdenEast/nightfox.nvim" },
  { "LazyVim/LazyVim", opts = {
    colorscheme = "duskfox",
  } },
  { "wakatime/vim-wakatime", lazy = false },
  { "akinsho/git-conflict.nvim", version = "*", config = true },
  {
    "ibhagwa/fzf-lua",
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

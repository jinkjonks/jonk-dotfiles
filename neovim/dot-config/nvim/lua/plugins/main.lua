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
  {
    "mgierada/lazydocker.nvim",
    dependencies = { "akinsho/toggleterm.nvim" },
    config = function()
      require("lazydocker").setup({
        border = "curved", -- valid options are "single" | "double" | "shadow" | "curved"
      })
    end,
    event = "VeryLazy",
    keys = {
      {
        "<leader>ld",
        function()
          require("lazydocker").open()
        end,
        desc = "Open Lazydocker floating window",
      },
    },
  },
  {
    "antosha417/nvim-lsp-file-operations",
    dependencies = {
      "nvim-lua/plenary.nvim",
      -- Uncomment whichever supported plugin(s) you use
      -- "nvim-tree/nvim-tree.lua",
      "nvim-neo-tree/neo-tree.nvim",
      -- "simonmclean/triptych.nvim"
    },
    config = function()
      require("lsp-file-operations").setup()
    end,
  },
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

return {
  {
    "LhKipp/nvim-nu",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("nu").setup({})
    end,
  },
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-telescope/telescope.nvim",
      "mfussenegger/nvim-dap-python",
    },
    cmd = "VenvSelect",
    config = true,
    auto_refresh = true,
    opts = { dap_enabled = true, name = { "venv", ".venv" } },
    keys = {
      { "<leader>vs", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv" },
      { "<leader>vv", "<cmd>:VenvSelectCached<cr>", desc = "Select VirtualEnv from cache" },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "mason.nvim" },
    opts = function(_, opts)
      if type(opts.sources) == "table" then
        local nls = require("null-ls")
        vim.list_extend(opts.sources, {
          nls.builtins.formatting.black,
        })
      end
    end,
  },

  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      autoformat = false,
    },
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- load the plugin before saving
    keys = {
      {
        "<leader>f",
        function()
          require("conform").format({ lsp_fallback = true })
        end,
        desc = "Format",
      },
    },
    opts = {
      formatters_by_ft = {
        python = { "black" },
      },
    },
  },
  {
    "hasufell/ghcup.vim",
    dependencies = { "rbgrouleff/bclose.vim" },
  },
}

return {
  {
    "echasnovski/mini.surround",
    opts = {
      mappings = {
        add = "gsa",
        delete = "gsd",
        find = "gsf",
        find_left = "gsF",
        highlight = "gsh",
        replace = "gsr",
        update_n_lines = "gsn",
      },
    },
  },
  {
    "pocco81/auto-save.nvim",
  },
  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    event = "LspAttach",
    keys = {
      {
        "<Leader>uD",
        function()
          vim.diagnostic.config({
            virtual_text = not require("lsp_lines").toggle(),
          })
        end,
        desc = "Toggle virtual diagnostic lines",
      },
    },
    opts = {},
    config = function(_, opts)
      vim.diagnostic.config({ virtual_lines = { only_current_line = true } })
      vim.diagnostic.config({ virtual_lines = { highlight_whole_line = false } })
      require("lsp_lines").setup(opts)
    end,
  },
}

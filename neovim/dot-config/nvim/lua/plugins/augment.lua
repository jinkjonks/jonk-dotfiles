return {
  {
    "augmentcode/augment.vim",
    version = "*",
    lazy = false,

    keys = {
      { "<leader>ac", ":Augment chat<CR>", mode = "n" },
      { "<leader>ac", ":Augment chat<CR>", mode = "v" },
      { "<leader>an", ":Augment chat-new<CR>", mode = "n" },
      { "<leader>an", ":Augment chat-new<CR>", mode = "v" },
      { "<leader>at", ":Augment chat-toggle<CR>", mode = "n" },
    },
  },
  {
    "folke/edgy.nvim",
    opts = function(_, opts)
      opts.right = opts.right or {}
      table.insert(opts.right, {
        title = "Augment Chat",
        ft = "augment-chat",
        size = { width = 50 },
      })
    end,
  },
}

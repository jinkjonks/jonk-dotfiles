return {
  {
    "augmentcode/augment.vim",
    version = "*",

    keys = {

      { "<leader>a", "", desc = "+ai", mode = { "n", "v" } },
      { "<leader>ac", "<cmd>Augment chat-toggle<CR>", desc = "Augment: chat toggle" },
      { "<leader>aa", "<cmd>Augment chat<CR>", desc = "Augment: chat" },
      {
        "<leader>ax",
        "<cmd>Augment chat-new<CR>",
        desc = "Augment: new conversation",
        mode = { "n", "v" },
      },
      { "<c-y>", "<cmd>call augment#Accept()<cr>" },
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

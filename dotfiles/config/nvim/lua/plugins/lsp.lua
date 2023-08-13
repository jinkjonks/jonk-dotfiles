return {
  "LhKipp/nvim-nu",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("nu").setup({})
  end,
}

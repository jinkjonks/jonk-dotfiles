return {
  { "Everblush/nvim" },
  { "LazyVim/LazyVim", opts = {
    colorscheme = "Everblush",
  } },
  { import = "lazyvim.plugins.extras.ui.edgy" },
  { import = "lazyvim.plugins.extras.editor.aerial" },
  {
    import = "lazyvim.plugins.extras.ui.treesitter-context",
  },
  { import = "lazyvim.plugins.extras.editor.snacks_explorer" },
  { import = "lazyvim.plugins.extras.editor.snacks_picker" },
}

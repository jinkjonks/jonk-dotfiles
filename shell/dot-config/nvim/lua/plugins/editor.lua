return {

  { import = "lazyvim.plugins.extras.ai.copilot" },
  { import = "lazyvim.plugins.extras.editor.inc-rename" },
  { import = "lazyvim.plugins.extras.editor.refactoring" },
  { "wakatime/vim-wakatime", lazy = false },
  {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    opts = {
      filesystem = {
        filtered_items = { hide_dotfiles = false, hide_gitignored = true },
        bind_to_cwd = false,
        follow_current_file = { enabled = true },
        use_libuv_file_watcher = true,
        hide_by_pattern = { "\\.git/*" },
        always_show = { ".env" },
      },
    },
  },
}

-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
--
vim.g.lazyvim_python_lsp = "basedpyright"
vim.g.python3_host_prog = "~/nvim/bin/python3"
vim.lsp.set_log_level("off")
vim.g.augment_disable_tab_mapping = true

vim.lsp.config("basedpyright", {
  settings = {
    basedpyright = {
      disableOrganizeImports = true,
      analysis = {
        autoImportCompletions = true,
        useTypingExtensions = true,
        autoFormatStrings = true,
        inlayHints = {
          variableTypes = false,
          callArgumentNames = false,
        },
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
      },
    },
  },
})

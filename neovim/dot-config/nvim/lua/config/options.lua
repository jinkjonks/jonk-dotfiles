-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
--
vim.g.lazyvim_python_lsp = "basedpyright"
vim.g.python3_host_prog = "~/nvim/bin/python3"
vim.g.augment_workspacefolders = { "~/gnome-flask" }
vim.g.lazyvim_blink_main = true

vim.g.lazyvim_picker = "fzf"

vim.lsp.set_log_level("off")

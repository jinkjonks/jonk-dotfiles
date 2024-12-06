return {
  { import = "lazyvim.plugins.extra.lang.python" },
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers.basedpyright.settings.basedpyright.analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "workspace",
      }
    end,
  },
}

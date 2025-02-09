return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers.basedpyright = {
        settings = {
          basedpyright = {
            autoSearchPaths = true,
            useLibraryCodeForTypes = true,
          },
        },
      }
    end,
  },
}

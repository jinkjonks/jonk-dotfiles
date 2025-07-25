return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers.basedpyright = {
        settings = {
          basedpyright = {
            analysis = {
              autoImportCompletions = true,
              useTypingExtensions = true,
              inlayHints = {
                variableType = false,
                callArgumentNames = true,
                functionReturnTypes = false,
              },
              diagnosticMode = "openFilesOnly",
            },
            autoSearchPaths = true,
            useLibraryCodeForTypes = true,
          },
        },
      }
    end,
  },
  {
    "roobert/f-string-toggle.nvim",
    config = function()
      require("f-string-toggle").setup({
        key_binding = "<leader>cpf",
        key_binding_desc = "Toggle f-string",
        filetypes = { "python" },
      })
    end,
  },
}

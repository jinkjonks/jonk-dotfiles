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
              autoFormatStrings = true,
              inlayHints = {
                variableTypes = false,
                callArgumentNames = false,
              },
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
    ft = "python",
    config = function()
      require("f-string-toggle").setup({
        key_binding = "<leader>cpf",
        key_binding_desc = "Toggle f-string",
        filetypes = { "python" },
      })
    end,
  },
}

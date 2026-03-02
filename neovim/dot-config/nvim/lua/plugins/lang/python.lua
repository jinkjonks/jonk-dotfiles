return {
  {
    "mason-org/mason.nvim",
    opts_extend = { "ensure_installed" },
    opts = {
      ensure_installed = { "ty", "ruff" },
    },
  },
  {
    "conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft["python"] = {
        "ruff_fix",
        "ruff_format",
      }
      return opts
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        basedpyright = false,
        pyright = false,
        ty = {
          settings = {
            ty = {
              diagnosticMode = "workspace",
              experimental = {
                rename = true,
                autoImport = true,
              },
            },
          },
        },
      },
    },
  },
}

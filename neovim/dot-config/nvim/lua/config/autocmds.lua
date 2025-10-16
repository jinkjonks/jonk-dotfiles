-- Function to disable diagnostics on text changes but enable on save for all attached LSP clients
local function setup_diagnostics_on_save(_, bufnr)
  -- Create autocommand to refresh diagnostics on BufWritePost (after saving)
  vim.api.nvim_create_autocmd("BufWritePost", {
    buffer = bufnr,
    callback = function()
      vim.lsp.buf.format({ async = true })
      vim.lsp.diagnostic.refresh()
    end,
  })
end

-- Example setup for all attached LSP clients in your lspconfig setup
require("lspconfig").util.default_config.on_attach = function(client, bufnr)
  setup_diagnostics_on_save(client, bufnr)
end

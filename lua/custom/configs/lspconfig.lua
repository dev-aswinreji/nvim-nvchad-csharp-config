local lspconfig = require("lspconfig")

-- TypeScript / JavaScript
lspconfig.tsserver.setup({
  on_attach = function(client, bufnr)
    -- Enable auto-imports
    client.server_capabilities.documentFormattingProvider = false
  end,
})


-- custom/lsp.lua
local lspconfig = require("lspconfig")
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local servers = {
  "tsserver",
  "eslint",
  "html",
  "cssls",
  "tailwindcss",
  "jsonls",
  "graphql",
  "prismals",
}

for _, lsp in ipairs(servers) do
  if lsp == "tsserver" then
    lspconfig.tsserver.setup({
      on_attach = on_attach,
      capabilities = capabilities,
      init_options = {
        preferences = {
          importModuleSpecifierPreference = "relative",
          importModuleSpecifierEnding = "auto",
          includeCompletionsForImportStatements = true,
          includeCompletionsWithInsertText = true,
        },
      },
    })
  else
    lspconfig[lsp].setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })
  end
end


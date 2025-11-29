-- custom/format.lua
require("conform").setup({
  formatters_by_ft = {
    javascript = { "prettier", "eslint_d" },
    typescript = { "prettier", "eslint_d" },
    javascriptreact = { "prettier", "eslint_d" },
    typescriptreact = { "prettier", "eslint_d" },
    json = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
  },
})

-- Auto format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.js", "*.ts", "*.jsx", "*.tsx", "*.json", "*.css", "*.html" },
  callback = function() require("conform").format() end,
})


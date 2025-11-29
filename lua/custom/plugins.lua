-- custom/plugins.lua
local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {
  -- LSP + Autocomplete
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("plugins.configs.lspconfig")
      require("custom.lsp")
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = overrides.cmp,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  -- Formatting
  {
    "stevearc/conform.nvim",
    config = function()
      require("custom.format")
    end,
  },

  -- Debugger
  {
    "mfussenegger/nvim-dap",
  },
  {
    "mxsdev/nvim-dap-vscode-js",
  },
  {
    "rcarriga/nvim-dap-ui",
  },

  -- React / Tailwind / Prisma
  { "windwp/nvim-ts-autotag" },
  { "styled-components/vim-styled-components" },
  { "luckasRanarison/tailwind-tools.nvim" },
  { "prisma/vim-prisma" },
}

return plugins


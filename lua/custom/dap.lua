-- custom/dap.lua
require("dap-vscode-js").setup({
  adapters = { "pwa-node" },
})

local dap = require("dap")
dap.configurations.javascript = {
  {
    type = "pwa-node",
    request = "launch",
    name = "Launch file",
    program = "${file}",
    cwd = vim.fn.getcwd(),
  },
}
dap.configurations.typescript = dap.configurations.javascript

require("dapui").setup()


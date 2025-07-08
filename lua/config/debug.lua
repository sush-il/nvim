local dapconfig = {}
local map = vim.keymap.set

dapconfig.jsadapter = {
  type = "server",
  host = "localhost",
  port = 8123,
  executable = {
    command = "node",
    args = {
      vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
      "8123",
    },
  },
}

dapconfig.jsconfig = {
  {
    type = "pwa-node",
    request = "launch",
    name = "Launch JS File",
    program = "${file}",
    cwd = "${workspaceFolder}",
    runtimeExecutable = "node",
    console = "integratedTerminal",
    runtimeArgs = { "--inspect-brk" }
  },
}

-- Adapter for Go using delve
dapconfig.goadapter  = {
  type = "server",
  port = "${port}",
  executable = {
    command = "dlv",
    args = { "dap", "-l", "127.0.0.1:${port}" },
  },
}

-- Configurations for Go
dapconfig.goconfig = {
  {
    type = "go",
    name = "Debug File",
    request = "launch",
    program = "${file}",
  },
  {
    type = "go",
    name = "Debug Package",
    request = "launch",
    program = "${fileDirname}",
  }
}

dapconfig.keymappings = function()
    map("n", "<leader>du", '<cmd>lua require("dapui").toggle()<CR>', { desc = "DAP UI Toggle" })
    map('n', '<leader>db', '<cmd>lua require("dap").toggle_breakpoint()<CR>', { desc = "DAP: Toggle Breakpoint" })
    map('n', '<leader>dc', '<cmd>lua require("dap").continue()<CR>', { desc = "DAP: Continue" })
    map('n', '<leader>ds', '<cmd>lua require("dap").step_over()<CR>', { desc = "DAP: Step Over" })
    map('n', '<leader>di', '<cmd>lua require("dap").step_into()<CR>', { desc = "DAP: Step Into" })
    map('n', '<leader>do', '<cmd>lua require("dap").step_out()<CR>', { desc = "DAP: Step Out" })
    map('n', '<leader>dr', '<cmd>lua require("dap").repl.toggle()<CR>', { desc = "DAP: Toggle REPL" })
    map('n', '<leader>dt', '<cmd>lua require("dap").terminate()<CR>', { desc = "DAP: Terminate Debugger" })
    map('n', '<leader>dl', '<cmd>lua require("dap").list_breakpoints()<CR>', { desc = "DAP: List Breakpoints" })
    map('n', '<leader>dP', '<cmd>lua require("dap").pause()<CR>', { desc = "DAP: Pause" })
end

return dapconfig

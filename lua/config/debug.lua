local dapconfig = {}
local map = vim.keymap.set
local dap = require('dap')

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
  },
}

dapconfig.keymappings = function()
    -- DAP (Debugging)
    map("n", "<Leader>dc", function() dap.continue() end, { desc = "Start/Continue Debugging" })
    map("n", "<F10>", function() dap.step_over() end, { desc = "Step Over" })
    map("n", "<F11>", function() dap.step_into() end, { desc = "Step Into" })
    map("n", "<F12>", function() dap.step_out() end, { desc = "Step Out" })
    map("n", "<Leader>db", function() dap.toggle_breakpoint() end, { desc = "Toggle Breakpoint" })
    map("n", "<Leader>dr", function() dap.repl.open() end, { desc = "Open DAP REPL" })
end

return dapconfig 

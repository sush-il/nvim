return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
      "theHamsta/nvim-dap-virtual-text",
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      local dapvt = require("nvim-dap-virtual-text")

      -- Setup dap-ui and virtual text
      dapui.setup(require('config.dapui'))
      dapvt.setup()

      -- Automatically open/close UI
      dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
      dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close() end
      dap.listeners.before.event_exited["dapui_config"] = function() dapui.close() end
      dap.set_exception_breakpoints({ "all" })

      -- JS/TS adapter from Mason installation
      dap.adapters["pwa-node"] = require('config.debug').jsadapter
      dap.adapters.go = require('config.debug').goadapter

      -- JS & JSX configurations
      dap.configurations.javascript = require('config.debug').jsconfig
      dap.configurations.javascriptreact = require('config.debug').jsconfig 

      -- Go configurations
      dap.configurations.go = require('config.debug').goconfig

      require('config.debug').keymappings()
    end,
  }
}

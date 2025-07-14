local dapuiconfig = {
    layouts = {
        {
            -- Left panel (main debug info)
            elements = {
                { id = "scopes",      size = 0.7 },
                { id = "breakpoints", size = 0.3 },
            },
            size = 40,
            position = "left"
        },
        {
            -- Bottom panel (optional)
            elements = {
                { id = "repl",     size = 1.0 },
                { id = "controls", size = 0.15 },
            },
            size = 10,
            position = "bottom",
        },
    }
}

local keymappings = function()
    local map = vim.keymap.set
    local dap, dapui = require("dap"), require("dapui")
    map("n", "<leader>du", function() dapui.toggle() end, { desc = "DAP UI Toggle" })
    map("n", "<leader>db", function() dap.toggle_breakpoint() end, { desc = "DAP: Toggle Breakpoint" })
    map("n", "<leader>dc", function() dap.continue() end, { desc = "DAP: Continue" })
    map("n", "<leader>ds", function() dap.step_over() end, { desc = "DAP: Step Over" })
    map("n", "<leader>di", function() dap.step_into() end, { desc = "DAP: Step Into" })
    map("n", "<leader>do", function() dap.step_out() end, { desc = "DAP: Step Out" })
    map("n", "<leader>dr", function() dap.repl.toggle() end, { desc = "DAP: Toggle REPL" })
    map("n", "<leader>dt", function() dap.terminate() end, { desc = "DAP: Terminate Debugger" })
    map("n", "<leader>dl", function() dap.list_breakpoints() end, { desc = "DAP: List Breakpoints" })
    map("n", "<leader>dP", function() dap.pause() end, { desc = "DAP: Pause" })
end


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
            dapui.setup(dapuiconfig)
            dapvt.setup()

            -- Automatically open/close UI
            -- dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
            dap.listeners.after.event_initialized["dapui_config"] = function()
                vim.schedule(function()
                    dapui.open()
                end
                )
            end
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
        end,
    }
}

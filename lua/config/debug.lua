local dapconfig     = {}

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

dapconfig.jsconfig  = {
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
dapconfig.goadapter = {
    type = "server",
    port = "${port}",
    executable = {
        command = "dlv",
        args = { "dap", "-l", "127.0.0.1:${port}" },
    },
}

-- Configurations for Go
dapconfig.goconfig  = {
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

return dapconfig

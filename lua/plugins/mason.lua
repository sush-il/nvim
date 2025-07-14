return {
    {
        'mason-org/mason.nvim',
        config = function()
            require('mason').setup()
        end,
    },

    -- LSPs
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            "neovim/nvim-lspconfig",
            { "mason-org/mason.nvim", opts = {} },
        },
        opts = {
            ensure_installed = {
                'lua_ls',
                'ts_ls',
                'gopls',
                'pyright',
                'jsonls'
            }
        },
    },

    --  Debuggers
    {
        "jay-babu/mason-nvim-dap.nvim",
        dependencies = {
            "mason-org/mason.nvim",
            "mfussenegger/nvim-dap",
        },
        opts = {
            ensure_installed = {
                "js", -- js-debug-adapter for JavaScript/TypeScript debugging
            },
            automatic_installation = true,
        },
        config = function(_, opts)
            require("mason-nvim-dap").setup(opts)
        end,
    },
}

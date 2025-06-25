return {
    {
        'mason-org/mason.nvim',
        config = function()
            require('mason').setup()
        end,
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = {
                'lua_ls',
                'ts_ls',
                'gopls',
                'pyright'
            }
        },
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    }
}

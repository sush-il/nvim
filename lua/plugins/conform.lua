local config = {
    format_on_save = {
        timeout_ms = 3000,
        async = false,
        quiet = false,
        lsp_fallback = true,
    },

    formatters_by_ft = {
        -- lua = { "stylua" },
        javascript = { "eslint_d" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        json = { "eslint_d" },
        css = { "prettier" },
        html = { "prettier" },
        python = { "black" },
        go = { "gofmt" },
        sh = { "shfmt" },
    }
}

return {
    'stevearc/conform.nvim',
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require("conform").setup(config)
    end,
}

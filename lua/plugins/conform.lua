local config = {
    format_on_save = {
        timeout_ms = 3000,
        async = false,
        quiet = false,
        lsp_fallback = false,
    },

    formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        python = { "black" },
        go = { "gofmt" },
        sh = { "shfmt" },
        lua = { "stylua" },
        json = {}, -- "prettier"
    }
}

return {
    'stevearc/conform.nvim',
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require("conform").setup(config)
    end,
}

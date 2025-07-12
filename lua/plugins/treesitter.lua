local config = {
    ensure_installed = {
        "javascript",
        "json",
        "lua",
        "luadoc",
        "printf",
        "vim",
        "vimdoc"
    },

    highlight = {
        enable = true,
        use_languagetree = true,
    },

    indent = { enable = true },
}

return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup(config)
    end,
}

local toplevelkeys = {
    { "<leader>b", group = "Buffers" },
    { "<leader>d", group = "Debug" },
    { "<leader>f", group = "Find" },
    { "<leader>g", group = "Git" },
    { "<leader>n", group = "Nvim Tree" },
    { "<leader>s", group = "Split" },
    { "<leader>t", group = "Terminal" },
    { "<leader>w", group = "Windows" },
    -- You can also add descriptions for individual keys here if they don't belong to a group
    -- { "<leader>s", desc = "Search" },
}

return {
    "folke/which-key.nvim",
    event = "VeryLazy",

    opts = {
        spec = toplevelkeys
    },

    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show() -- No need for global = false or add here
            end,
            desc = "Local Keymaps",
        },
    },
}

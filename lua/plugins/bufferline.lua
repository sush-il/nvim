local mappings = {
    { "<Tab>",      function() vim.cmd("BufferLineCycleNext") end,   mode = "n", desc = "Next buffer" },
    { "<S-Tab>",    function() vim.cmd("BufferLineCyclePrev") end,   mode = "n", desc = "Previous buffer" },
    { "<leader>bc", function() vim.cmd("bdelete!") end,              mode = "n", desc = "Buffer: Close current" },
    { "<leader>bC", function() vim.cmd("BufferLineCloseOthers") end, mode = "n", desc = "Buffer: Close others" },
    { "<leader>bl", function() vim.cmd("BufferLineCloseLeft") end,   mode = "n", desc = "Buffer: Close left" },
    { "<leader>br", function() vim.cmd("BufferLineCloseRight") end,  mode = "n", desc = "Buffer: Close right" },
}

return {
    "akinsho/bufferline.nvim",
    version = "*",
    keys = mappings,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("bufferline").setup()
    end,
}

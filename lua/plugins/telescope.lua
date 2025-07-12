local telescopebuiltin = require("telescope.builtin")
local mappings = {
    { "<leader>ff", function() telescopebuiltin.find_files() end, desc = "Find files" },
    { "<leader>fg", function() telescopebuiltin.live_grep() end,  desc = "Live grep" },
    { "<leader>fb", function() telescopebuiltin.buffers() end,    desc = "Buffers" },
    { "<leader>fh", function() telescopebuiltin.help_tags() end,  desc = "Help tags" },
}

return {
    "nvim-telescope/telescope.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    keys = mappings,
    config = function()
        require("telescope").setup({})
    end,
}

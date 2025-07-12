local mappings = {
    { "<C-n>",      function() vim.cmd("NvimTreeToggle") end,   desc = "Toggle NvimTree" },
    { "<leader>nt", function() vim.cmd("NvimTreeToggle") end,   desc = "Toggle NvimTree" },
    { "<leader>nf", function() vim.cmd("NvimTreeFindFile") end, desc = "Find current file in NvimTree" },
    { "<leader>nr", function() vim.cmd("NvimTreeRefresh") end,  desc = "Refresh NvimTree" },
}

local options = {
    -- Filters out dotfiles (like .git, .env)
    filters = {
        dotfiles = false,
        git_ignored = false
    },

    git = { enable = true, },
    hijack_cursor = true,
    sync_root_with_cwd = true,
    update_focused_file = {
        enable = true,
        update_root = false, -- don't change root of tree, just highlight the file
    },
    view = {
        width = 30,
        preserve_window_proportions = true, -- keeps splits from resizing weirdly
    },
    renderer = {
        root_folder_label = false,
        highlight_git = true, -- enable git status colors
        indent_markers = {
            enable = true,
        },
        icons = {
            glyphs = {
                default = "󰈚",
                folder = {
                    default = "",
                    empty = "",
                    empty_open = "",
                    open = "",
                    symlink = "",
                },
                git = {
                    unmerged = "",
                },
            },
        },
    },
    -- NvimTree also has an internal 'key_bindings' option,
    -- but these are for actions *inside* the NvimTree window.
    -- For global toggles, the lazy.nvim 'keys' approach is better.
}

return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons", },
    keys = mappings,
    config = function()
        require("nvim-tree").setup(options)
    end,
}

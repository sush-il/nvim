-- ### This file only contains core mappins ### --
-- ### For plugin mappings check the file with the plugin name ### --
-- ### Some cases instead of plugin configs are grouped, e.g. 'theming' ### --

local map = vim.keymap.set

-- GENERAL

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "Clear search highlights" })
map("n", "<C-s>", "<cmd>w<CR>",   { desc = "Save file" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "Copy entire file to clipboard" })
map("n", "<leader>n", "<cmd>set nu!<CR>",   { desc = "Toggle line numbers" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "Toggle relative line numbers" })

-- INSERT MODE  

map("i", "<C-b>", "<ESC>^i", { desc = "Move to beginning of line" })
map("i", "<C-e>", "<End>",   { desc = "Move to end of line" })
map("i", "<C-h>", "<Left>",  { desc = "Move left" })
map("i", "<C-l>", "<Right>", { desc = "Move right" })
map("i", "<C-h>", "<C-w>",   { desc = "Remove word backwards" })

-- NORMAL MODE 

map("n", "dd", '"_dd', { desc = "Delete line" })
map("n", "d", '"_d', { desc = "Delete motion)" })
map("n", "D", '"_D', { desc = "Delete to EOL" })
map("n", "x", '"_x', { desc = "Delete character" })

map("n", "<M-j>", "ddp", { desc = "Move line down" })
map("n", "<M-k>", "ddkP", { desc = "Move line up" })
map("n", "<M-S-j>", "yyp", { desc = "Duplicate line down" })
map("n", "<M-S-k>", "yyP", { desc = "Duplicate line up" })

-- VISUAL MODE 

map("v", "d", '"_d', { desc = "Delete selection" })


-- WINDOW NAVIGATION 

map("n", "<leader>sr", ":vsplit<CR>", { desc = "Split window to right" })
map("n", "<Leader>sd", ":split<CR>",  { desc = "Split window below" })

map("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to window below" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to window above" })


-- Terminal 

local job_id = 0
map("n", "<space>to", 
    function()
      vim.cmd.vnew()             -- open vertical split
      vim.cmd.term()
      vim.cmd.wincmd("J")        -- move terminal window to bottom
      vim.api.nvim_win_set_height(0, 5)
      vim.cmd("startinsert")
      job_id = vim.bo.channel    -- terminal job/channel ID; used if ever directly executing commands 
    end,
    { desc = "Open small horizontal terminal" }
)

-- <Esc> to exit terminal mode and close the window
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>:close<CR>", {
    noremap = true,
    silent = true,
    desc = "Exit terminal window"
})

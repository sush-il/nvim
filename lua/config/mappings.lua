local map = vim.keymap.set

-- GENERAL

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "Clear search highlights" })
map("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "Copy entire file to clipboard" })
map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "Toggle line numbers" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "Toggle relative line numbers" })


-- INSERT MODE 

map("i", "<C-b>", "<ESC>^i", { desc = "Move to beginning of line" })
map("i", "<C-e>", "<End>", { desc = "Move to end of line" })
map("i", "<C-h>", "<Left>", { desc = "Move left" })
map("i", "<C-l>", "<Right>", { desc = "Move right" })
map("i", "<C-j>", "<Down>", { desc = "Move down" })
map("i", "<C-k>", "<Up>", { desc = "Move up" })


-- NORMAL MODE 

map("n", "dd", '"_dd', { desc = "Delete line" })
map("n", "d", '"_d', { desc = "Delete motion)" })
map("n", "D", '"_D', { desc = "Delete to EOL" })
map("n", "x", '"_x', { desc = "Delete character" })


-- VISUAL MODE 

map("v", "d", '"_d', { desc = "Delete selection" })


-- WINDOW NAVIGATION 

map("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to window below" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to window above" })

-- #################### PLUGINS ################################ --

-- NVIM TREE
map('n', '<C-n>', ':NvimTreeToggle<CR>', { silent = true, noremap = true })

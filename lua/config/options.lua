local opt = vim.opt
local g = vim.g 

-- Set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Disable netrw banner (file explorer)
g.netrw_banner = 0
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- UI Settings
opt.guicursor = ""             -- Use a block cursor in all modes
opt.nu = true                  -- Show line numbers
opt.relativenumber = false    
opt.termguicolors = true     
opt.background = "dark"     
opt.scrolloff = 8              -- Keep 8 lines visible when scrolling
opt.signcolumn = "yes"         -- Always show the sign column
opt.colorcolumn = ""           -- Vertical line at column 80 ("" disables)
opt.mouse = "a"                -- Enable mouse in all modes

-- Indentation and Tabs
opt.tabstop = 4               
opt.softtabstop = 4          
opt.shiftwidth = 4          
opt.expandtab = true           -- Convert tabs to spaces
opt.autoindent = true      
opt.smartindent = true    
opt.wrap = false         
opt.whichwrap:append "<>[]hl"  -- Go to previous/next line when EOL reached

-- Numbers
opt.number = true
opt.numberwidth = 2
opt.ruler = false

-- Backup and Undo
opt.swapfile = true
opt.backup = false
opt.undofile = true

-- Search
opt.incsearch = true           -- Show matches while typing
opt.ignorecase = true          -- Ignore case...
opt.smartcase = true           -- ...unless uppercase is used
vim.inccommand = "split"       -- Live preview for :substitute

-- Split behavior
opt.splitright = true
opt.splitbelow = true

-- Miscellaneous
opt.backspace = { "start", "eol", "indent" }  -- Allow full backspace
opt.isfname:append("@-@")                     -- Allow @ in filenames
opt.updatetime = 100 
opt.clipboard = "unnamedplus"                -- Sync with system clipboard
opt.fileformats = { "unix", "mac", "dos" } 

-- EditorConfig support
g.editorconfig = true

-- Code folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldcolumn = "0"
vim.opt.foldlevel = 99
vim.opt.foldtext = "" 

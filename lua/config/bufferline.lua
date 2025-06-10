local mappings = {
  { "<Tab>",        "<cmd>BufferLineCycleNext<CR>",      mode = "n", desc = "Next buffer" },
  { "<S-Tab>",      "<cmd>BufferLineCyclePrev<CR>",      mode = "n", desc = "Previous buffer" },
  { "<leader>bc",   "<cmd>bdelete!<CR>",                 mode = "n", desc = "Buffer: Close current" },
  { "<leader>bC",   "<cmd>BufferLineCloseOthers<CR>",    mode = "n", desc = "Buffer: Close others" },
  { "<leader>bl",   "<cmd>BufferLineCloseLeft<CR>",      mode = "n", desc = "Buffer: Close left" },
  { "<leader>br",   "<cmd>BufferLineCloseRight<CR>",     mode = "n", desc = "Buffer: Close right" },
}

return {
  keys = mappings
}

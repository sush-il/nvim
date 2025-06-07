local mappings = {
  { "<leader>gs", function() vim.cmd("Neogit") end, desc = "Neogit: Status" },
  { "<leader>gc", function() vim.cmd("Neogit commit") end, desc = "Neogit: Commit" },
  { "<leader>gp", function() vim.cmd("Neogit pull") end, desc = "Neogit: Pull" },
  { "<leader>gP", function() vim.cmd("Neogit push") end, desc = "Neogit: Push" },
  { "<leader>gl", function() vim.cmd("Neogit log") end, desc = "Neogit: Log" },
  { "<leader>gd", function() vim.cmd("Neogit diff") end, desc = "Neogit: Diff" },
  { "<leader>gg", function() vim.cmd("Neogit blame") end, desc = "Neogit: Blame" },
}

local opts = {
  -- Example:
  -- signs = {
  --   add = { text = "▎" },
  --   change = { text = "▎" },
  --   delete = { text = "" },
  -- },
}

return {
  keys = mappings,
  opts = opts,
}

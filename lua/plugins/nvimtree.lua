local config = require('config.nvimtree')

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons", },
  keys = config.keys,
  config = function()
    require("nvim-tree").setup(config.opts)
  end,
}

local config = require('config.telescope')

return {
  "nvim-telescope/telescope.nvim",
  dependencies = "nvim-lua/plenary.nvim", 
  keys = config.keys, 
  config = function()
    require("telescope").setup(config.config)
  end,
}

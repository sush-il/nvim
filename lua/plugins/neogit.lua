local config = require('config.neogit')

return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",       
    "nvim-telescope/telescope.nvim", 
  },

  keys = config.keys,
  config = function()
    require('neogit').setup(config.opts);
  end
}

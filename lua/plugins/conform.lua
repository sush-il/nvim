local config = require('config.conform')

return {
  'stevearc/conform.nvim',
  event = { "BufReadPre", "BufNewFile" },
  config = function()
      require("conform").setup(config)
  end,
}

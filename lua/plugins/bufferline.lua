local config = require('config.bufferline')

return {
   'akinsho/bufferline.nvim',
    version = "*",
    keys = config.keys,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
    require ('bufferline').setup()
    end,
}

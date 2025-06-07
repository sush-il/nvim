-- In plugins/treesitter.lua or similar
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup(
        require("config.treesitter")
    )
  end,
}

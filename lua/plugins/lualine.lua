local config = {
	options = {
		theme = "catppuccin",
	},
	sections = {
		lualine_c = {},
		lualine_x = {},
	},
}

return {
	"nvim-lualine/lualine.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",

	config = function()
		require("lualine").setup(config)
	end,
}

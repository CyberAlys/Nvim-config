return {
	"nvim-treesitter/nvim-treesitter",
        branch = 'main',
	dependencies = {
		{
			"OXY2DEV/markview.nvim",
			lazy = false,

			-- For `nvim-treesitter` users.
			priority = 49,
		},
	},
	build = ":TSUpdate",
}


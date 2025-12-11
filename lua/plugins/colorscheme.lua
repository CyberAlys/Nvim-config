local themes = {
	["off"] = {
		"pbrisbin/vim-colors-off",
		priority = 1000,
		config = function()
			vim.opt.background = "dark"
			vim.cmd.colorscheme("off")
		end,
	},
	["yin-yang"] = {
		"pgdouyon/vim-yin-yang",
		priority = 1000,
		lazy = false,
		opts = {},
		config = function()
			vim.opt.background = "dark"
			vim.cmd.colorscheme("yin")
		end,
	},
	["spartan"] = {
		"JarrodCTaylor/spartan",
		priority = 1000,
		lazy = false,
		opts = {},
		config = function()
			vim.opt.background = "dark"
			vim.cmd.colorscheme("spartan")
		end,
	},
	["tokyonight"] = {

  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
		config= function()
			vim.opt.background= "dark"
			vim.cmd.colorscheme("tokyonight-moon")
		end,

	}
}

return themes["tokyonight"]


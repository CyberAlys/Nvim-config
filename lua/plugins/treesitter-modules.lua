return{
    'MeanderingProgrammer/treesitter-modules.nvim',
config = function()
require("treesitter-modules").setup({
			ensure_installed = {
				"c",
				"cpp",
				"java",
				"lua",
				"vim",
				"vimdoc",
				"javascript",
				"html",
				"css",
				"typescript",
				"scss",
				"sql",
				"php",
				"json",
				"markdown",
				"markdown_inline",
				"latex",
				"typst",
				"yaml",
			},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
end,
}

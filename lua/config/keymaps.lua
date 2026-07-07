local wk = require("which-key")

--Telescope
local builtin = require("telescope.builtin")
wk.add({
	{ "<leader>t", group = "Telescope", icon = { icon = "󰭎", color = "orange" } },
	{ "<leader>tf", builtin.find_files, desc = "Telescope find files", mode = "n", icon = { icon = "󰱼", color = "orange" } },
	{ "<leader>tg", builtin.live_grep, desc = "Telescope live grep", mode = "n" },
	{ "<leader>tb", builtin.buffers, desc = "Telescope find open buffers", mode = "n", icon = { icon = "", color = "orange" } },
	{ "<leader>th", builtin.help_tags, desc = "Telescope help tags", mode = "n" },
})

--Notifications
wk.add({
	{ "<leader>n",  group = "Notifications" },
	{ "<leader>nh", "<cmd>NoiceTelescope<cr>", desc = "Noice History", mode = 'n' },
	{
		"<leader>nn",
		function()
			if Snacks.config.picker and Snacks.config.picker.enabled then
				Snacks.picker.notifications()
			else
				Snacks.notifier.show_history()
			end
		end,
		desc = "Notification History"
	},
})

--Explorer
wk.add({
	{ "<leader>e", group = "Explorer", icon = { icon = "" } },
	{ "<leader>ee", function() Snacks.explorer() end, desc = "Explorer Snacks (Project root dir)", mode = "n", icon = { icon = "" } },
	{ "<leader>eE", function() Snacks.explorer({ cwd = "~/" }) end, desc = "Explorer Snacks (Home folder)", mode = "n", icon = { icon = "󱂵" } },
})

-- Buffers
vim.keymap.set("n", "<C-x>", "<cmd>bdelete<cr>")
vim.keymap.set("n", "<C-o>", "<cmd>only<cr>")
vim.keymap.set("n", "<C-n>", "<cmd>bnext<cr>")
vim.keymap.set("n", "<C-p>", "<cmd>bprevious<cr>")
vim.keymap.set("n", "<C-q>", "<cmd>b#<cr>")
vim.keymap.set("n", "<C-ç>", "<cmd>vsplit<cr>")
vim.keymap.set("n", "<C-Ç>", "<cmd>split<cr>")

wk.add({
	{ "<leader>b",  group = "Buffers" },
	{ "<leader>bp", "<Cmd>BufferLineTogglePin<CR>",            desc = "Toggle Pin" },
	{ "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete Non-Pinned Buffers" },
	{ "<leader>br", "<Cmd>BufferLineCloseRight<CR>",           desc = "Delete Buffers to the Right" },
	{ "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>",            desc = "Delete Buffers to the Left" },

})


-- Windows
vim.keymap.set("n", "<C-h>", "<C-w>h", { remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { remap = true })

--Trouble

wk.add({
	{ "<leader>x", group = 'Trouble', icon = { icon = "", color = "red" } },
	{ "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)", icon = { icon = "", color = "red" } },
	{ "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics (Trouble)", icon = { icon = "", color = "red" } },
	{ "<leader>xs", "<cmd>Trouble symbols toggle focus=false<cr>", desc = "Symbols (Trouble)" },
	{ "<leader>xl", "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Trouble)" },
	{ "<leader>xq", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Trouble)" },

})

--Lazygit
wk.add({
	{ "<leader>G", "<cmd>LazyGit<cr>", desc = "LazyGit" },
})


--NVIM DAP
wk.add({
	{ "<leader>d", group = "Debugger", icon = { icon = "󰃤", color = "red" } },
	{ "<leader>dc", function() require("dap").continue() end, desc = "Debugger continue", mode = "n", icon = { icon = "󰃤", color = "green" } },
	{ "<leader>dl", function() require("dap").step_into() end, desc = "Debugger step into", mode = "n", icon = { icon = "󰃤", color = "blue" } },
	{ "<leader>dj", function() require("dap").step_over() end, desc = "Debugger step over", mode = "n", icon = { icon = "󰃤", color = "blue" } },
	{ "<leader>dk", function() require("dap").step_out() end, desc = "Debugger step out", mode = "n", icon = { icon = "󰃤", color = "blue" } },
	{ "<leader>db", function() require("dap").toggle_breakpoint() end, desc = "Debugger toggle breakpoint", mode = "n", icon = { icon = "󰃤", color = "red" } },
	{ "<leader>dd", function() require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: ")) end, desc = "Debugger set conditional breakpoint", mode = "n", icon = { icon = "󰃤", color = "red" } },
	{ "<leader>de", function() require("dap").terminate() end, desc = "Debugger terminate", mode = "n", icon = { icon = "󰃤", color = "red" } },
	{ "<leader>dr", function() require("dap").run_last() end, desc = "Debugger run last", mode = "n", icon = { icon = "󰃤", color = "yellow" } },
})

vim.keymap.set("n", "K", function()
	require("pretty_hover").hover()
end, { desc = "Pretty hover docs" })

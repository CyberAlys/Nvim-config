
local wk = require("which-key")
--Telescope
local builtin = require("telescope.builtin")
wk.add({
  {"<leader>t", group = "Telescope"},
  {"<leader>tf", builtin.find_files, desc= "Telescope find files", mode = "n"},
  {"<leader>tg", builtin.live_grep, desc= "Telescope live grep", mode = "n"},
  {"<leader>tb", builtin.buffers, desc= "Telescope find files", mode = "n"},
  {"<leader>th", builtin.help_tags, desc= "Telescope help tags", mode = "n"},
  {"<leader>tc", builtin.create, desc= "Telescope create file/directory", mode = "n"},
})
--vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
--vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
--vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
--vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

--Notifications 
wk.add({
	{"<leader>n",group = "Notifications"},
	{"<leader>nh", "<cmd>NoiceTelescope<cr>" ,desc = "Noice History", mode = 'n'},
	{"<leader>nn", function()
        if Snacks.config.picker and Snacks.config.picker.enabled then
          Snacks.picker.notifications()
        else
          Snacks.notifier.show_history()
        end
      end, desc = "Notification History" },
        {"<leader>nw", "<cmd>Trouble diagnostics toggle<cr>", desc = "Warnings/Errors", mode = 'n'},
})

--Explorer
wk.add({
  {"<leader>e", group ="Explorer"},
  {"<leader>ee", function() Snacks.explorer() end, desc = "Explorer Snacks (Nvim root dir)", mode = "n"},
  {"<leader>eE", function() Snacks.explorer({cwd = "~/"}) end,  desc = "Explorer Snacks (cwd)", mode = "n"},
})

-- Buffers
vim.keymap.set("n", "<C-x>", "<cmd>bdelete<cr>")
vim.keymap.set("n", "<C-o>", "<cmd>only<cr>")
vim.keymap.set("n", "<C-n>", "<cmd>bnext<cr>")
vim.keymap.set("n", "<C-p>", "<cmd>bprevious<cr>")
vim.keymap.set("n", "<C-q>", "<cmd>b#<cr>")

wk.add({
      {"<leader>b", group = "Buffers"},
      { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle Pin" },
      { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete Non-Pinned Buffers" },
      { "<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete Buffers to the Right" },
      { "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete Buffers to the Left" },

})


-- Windows
vim.keymap.set("n", "<C-h>", "<C-w>h", { remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { remap = true })


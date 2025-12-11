return{
"neovim/nvim-lspconfig",
lazy = false,
config = function()
	vim.lsp.enable({"jdtls","clangd","lua_ls"})
end,
}

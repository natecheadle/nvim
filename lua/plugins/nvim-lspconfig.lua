return {
	"neovim/nvim-lspconfig",
	config = function()
		local lsp = require("lspconfig")
		lsp.lua_ls.setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})
		lsp.cmake.setup({})
		lsp.clangd.setup({})
		lsp.pyright.setup({})
	end,
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
}

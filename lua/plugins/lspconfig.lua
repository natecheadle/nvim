return {
	"neovim/nvim-lspconfig",

	keys = {
		{
			"<leader>ca",
			function()
				vim.lsp.buf.code_action()
			end,
			desc = "Show Code Actions",
			mode = "n",
		},
		{
			"<leader>gd",
			function()
				vim.lsp.buf.definition()
			end,
			desc = "Go To Symbol Definition",
			mode = "n",
		},
		{
			"<leader>ge",
			function()
				vim.lsp.buf.declaration()
			end,
			desc = "Go To Symbol Declaration",
			mode = "n",
		},
		{
			"<leader>ra",
			function()
				vim.lsp.buf.rename()
			end,
			desc = "Rename Using LSP",
			mode = "n",
		},
	},
}

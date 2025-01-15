return {
	"neovim/nvim-lspconfig",

	config = function()
		local lsp = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local lsp_servers = { "cmake", "clangd", "pyright", "jsonls", "csharp_ls" }
		for _, server in ipairs(lsp_servers) do
			lsp[server].setup({
				capabilities = capabilities,
			})
		end

		lsp.lua_ls.setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
			capabilites = capabilities,
		})
	end,

	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
	},
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

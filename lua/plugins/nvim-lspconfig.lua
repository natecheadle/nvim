return {
	"neovim/nvim-lspconfig",
	config = function()
		local lsp = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local lsp_servers = { "cmake", "clangd", "pyright", "lspjson" }
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
}

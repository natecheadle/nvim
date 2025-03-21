return {
	"stevearc/conform.nvim",
	event = "BufWritePre", -- uncomment for format on save
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			cpp = { "clang_format" },
			cmake = { "cmake_format" },
			cs = { "csharpier" },
			css = { "prettier" },
			html = { "prettier" },
			json = { "fixjson" },
			python = { "autopep8" },
			tex = { "latexindent" },
			markdown = { "mdformat" },
		},

		format_on_save = {
			-- These options will be passed to conform.format()
			timeout_ms = 1000,
			lsp_fallback = true,
		},

		formatters = {
			mdformat = {
				prepend_args = { "--end-of-line", "lf", "--number", "--wrap", "100" },
			},
		},
	},
	keys = {
		{
			"<leader>df",
			function()
				require("conform").format()
			end,
			desc = "Format Document",
			mode = "n",
		},
	},
}

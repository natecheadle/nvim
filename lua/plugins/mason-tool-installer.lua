return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	config = function()
		require("mason-tool-installer").setup({
			ensure_installed = {
				--C++
				"clangd",
				"clang-format",
				"codelldb",

				--lua
				"stylua",
				"lua-language-server",
				"luacheck",

				--cmake
				"cmake-language-server",
				"cmakelang",
				"cmakelint",

				--C#
				"netcoredbg",
				"csharp-language-server",
				"csharpier",

				--python
				"pyright",
				"autopep8",
				"pylint",

				--json
				"fixjson",
				"jsonlint",
				"json-lsp",
			},
		})
	end,
}

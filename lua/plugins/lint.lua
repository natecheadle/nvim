return {
	"mfussenegger/nvim-lint",
	config = function()
		vim.api.nvim_create_autocmd({ "InsertLeave", "BufWritePost" }, {
			callback = function()
				local lint_status, lint = pcall(require, "lint")
				if lint_status then
					lint.try_lint()
				end
			end,
		})

		require("lint").linters_by_ft = {
			cpp = { "clangtidy" },
			python = { "pylint" },
			lua = { "luacheck" },
		}
	end,
	event = "VeryLazy",
}

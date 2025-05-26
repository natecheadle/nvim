return {
	"Civitasv/cmake-tools.nvim",
	commit = "72abb00",
	config = function()
		require("cmake-tools").setup({
			cmake_executor = {
				name = "quickfix",
			},
			cmake_runner = { -- runner to use
				name = "toggleterm", -- name of the runner
			},
			cmake_dap_configuration = { -- debug settings for cmake
				name = "cpp",
				type = "codelldb",
				request = "launch",
				stopOnEntry = false,
				runInTerminal = true,
				console = "integratedTerminal",
			},
		})
	end,
	event = "VeryLazy",
	dependencies = {
		"stevearc/overseer.nvim",
		"akinsho/toggleterm.nvim",
	},
	keys = {
		{
			"<leader>cg",
			"<CMD> CMakeGenerate <CR>",
			desc = "CMake Generate",
			mode = "n",
		},
		{
			"<leader>cb",
			"<CMD> CMakeBuild <CR>",
			desc = "CMakeBuild",
			mode = "n",
		},
		{
			"<leader>cr",
			"<CMD> CMakeRun <CR>",
			desc = "CMake Run",
			mode = "n",
		},
		{
			"<leader>cd",
			"<CMD> CMakeDebug <CR>",
			desc = "CMake Debug",
			mode = "n",
		},
	},
}

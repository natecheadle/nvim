return {
	{
		"j-morano/buffer_manager.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("buffer_manager").setup({})
		end,
		keys = {
			{
				"<leader>bm",
				function()
					require("buffer_manager.ui").toggle_quick_menu()
				end,
				desc = "Show Buffer Manager",
				mode = "n",
			},
		},
	},
}

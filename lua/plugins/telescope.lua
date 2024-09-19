return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },

	keys = {
		{
			"<leader>ff",
			function()
				require("telescope.builtin").find_files()
			end,
			desc = "Telescope Find Files",
			mode = "n",
		},
		{
			"<leader>fg",
			function()
				require("telescope.builtin").live_grep()
			end,
			desc = "Telescope Live Grep",
			mode = "n",
		},
		{
			"<leader>fb",
			function()
				require("telescope.builtin").buffers()
			end,
			desc = "Telescope Buffers",
			mode = "n",
		},
		{
			"<leader>fb",
			function()
				require("telescope.help_tags").buffers()
			end,
			desc = "Telescope Help Tags",
			mode = "n",
		},
	},
}

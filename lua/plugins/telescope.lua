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
			"<leader>fa",
			function()
				require("telescope.builtin").find_files({ no_ignore = true })
			end,
			desc = "Telescope Find All Files",
			mode = "n",
		},
		{
			"<leader>fr",
			function()
				require("telescope.builtin").lsp_references()
			end,
			desc = "Telescope Find All References",
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
			"<leader>fg",
			"y<ESC>:Telescope live_grep default_text=<c-r>0<CR>",
			desc = "Telescope Live Grep Selection",
			mode = "v",
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
			"<leader>fc",
			function()
				require("telescope.builtin").current_buffer_fuzzy_find()
			end,
			desc = "Telescope Find Current Buffer",
			mode = "n",
		},
	},
}

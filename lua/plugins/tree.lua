return {
	"nvim-tree/nvim-tree.lua",
	lazy = false, -- can't be lazy or initial state is bad
	config = function()
		require("nvim-tree").setup()
	end,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{ "<leader>e", "<cmd>NvimTreeOpen<cr>", desc = "Toggle Nvim Tree" },
	},
}

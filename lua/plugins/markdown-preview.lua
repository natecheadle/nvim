return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },

	config = function()
		vim.g.mkdp_auto_start = true
	end,
	build = "cd app && yarn install",
	keys = {
		{
			"<leader>mp",
			"<CMD> MarkdownPreviewToggle <CR>",
			desc = "Markdown Preview",
			mode = "n",
		},
	},
}

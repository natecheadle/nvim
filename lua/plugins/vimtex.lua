return {
	"lervag/vimtex",
	lazy = false, -- we don't want to lazy load VimTeX
	init = function()
		vim.g.vimtex_view_method = "general"
		vim.g.vimtex_compiler_latexmk = {
			["out_dir"] = "./out/",
		}
	end,
	keys = {
		{
			"<leader>li",
			"<CMD> VimtexInfo <CR>",
			desc = "Vimtex Info",
			mode = "n",
		},
		{
			"<leader>ll",
			"<CMD> VimtexCompile <CR>",
			desc = "Vimtex Compile",
			mode = "n",
		},
	},
}

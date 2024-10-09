local opt = vim.opt

opt.listchars:append({
	tab = "<->",
	trail = "·",
	lead = "·",
	extends = "▶",
	precedes = "◀",
	nbsp = "‿",
})

opt.list = true

opt.number = true
opt.relativenumber = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.termguicolors = true

if vim.g.neovide then
	vim.g.neovide_scale_factor = 0.75
	local change_scale_factor = function(delta)
		vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + delta
	end
	vim.keymap.set("n", "<C-=>", function()
		change_scale_factor(0.05)
	end)
	vim.keymap.set("n", "<C-->", function()
		change_scale_factor(-0.05)
	end)
end

vim.api.nvim_set_hl(0, "DapBreakpoint", { ctermbg = 0, fg = "#993939" })
vim.api.nvim_set_hl(0, "DapLogPoint", { ctermbg = 0, fg = "#61afef" })
vim.api.nvim_set_hl(0, "DapStopped", { ctermbg = 0, fg = "#98c379", bg = "#31353f" })

vim.fn.sign_define("DapBreakpoint", { text = "●", texthl = "DapBreakpoint" })
vim.fn.sign_define("DapBreakpointCondition", { text = "�", texthl = "DapBreakpoint" })
vim.fn.sign_define("DapBreakpointRejected", { text = "⚠", texthl = "DapBreakpoint" })
vim.fn.sign_define("DapLogPoint", { text = "■", texthl = "DapLogPoint" })
vim.fn.sign_define("DapStopped", { text = "▶", texthl = "DapStopped", linehl = "DapStopped", numhl = "DapStopped" })

vim.cmd("autocmd BufRead,BufNewFile *.vert,*.frag,*.geom,*.comp set filetype=glsl")

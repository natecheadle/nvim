require "nvchad.options"

local opt = vim.opt

opt.listchars:append {
  tab = "<->",
  trail = "·",
  lead = "·",
  extends = "▶",
  precedes = "◀",
  nbsp = "‿",
}

opt.list = true

opt.number = true
opt.relativenumber = true

vim.api.nvim_set_hl(0, "DapBreakpoint", { ctermbg = 0, fg = "#993939" })
vim.api.nvim_set_hl(0, "DapLogPoint", { ctermbg = 0, fg = "#61afef" })
vim.api.nvim_set_hl(0, "DapStopped", { ctermbg = 0, fg = "#98c379", bg = "#31353f" })

vim.fn.sign_define("DapBreakpoint", { text = "●", texthl = "DapBreakpoint" })
vim.fn.sign_define("DapBreakpointCondition", { text = "�", texthl = "DapBreakpoint" })
vim.fn.sign_define("DapBreakpointRejected", { text = "⚠", texthl = "DapBreakpoint" })
vim.fn.sign_define("DapLogPoint", { text = "■", texthl = "DapLogPoint" })
vim.fn.sign_define("DapStopped", { text = "▶", texthl = "DapStopped", linehl = "DapStopped", numhl = "DapStopped" })

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

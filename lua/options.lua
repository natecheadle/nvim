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

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

require "nvchad.options"

vim.opt.listchars:append {
  tab = "<->",
  trail = "·",
  lead = "·",
  extends = "▶",
  precedes = "◀",
  nbsp = "‿",
}

vim.opt.list = true

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

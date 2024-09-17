-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "gruvbox",

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

M.mason = {
  pkgs = {
    "clangd",
    "clang-format",
    "codelldb",
    "stylua",
    "lua-language-server",
    "cmake-language-server",
    "cmakelang",
    "cmakelint",
    "netcoredbg",
    "csharp-language-server",
    "csharpier",
    "pyright",
    "autopep8",
    "pylint",
  },
}
return M

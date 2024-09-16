require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("i", "jj", "<ESC>", { desc = "Escape insert mode with jj" })

map("v", "<leader>rf", "y:%s/<c-r>0//g<left><left>", { desc = "Replace selection in file" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>", { desc = "Save with CTRL+S" })

map("n", "<leader>df", function()
  require("conform").format()
end, { desc = "Format Document" })

map("n", "<leader>db", function()
  require("dap").toggle_breakpoint()
end, { desc = "Toggle BreakPoint" })

-- recommended mappings
-- resizing splits
-- these keymaps will also accept a range,
-- for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
map("n", "<A-h>", require("smart-splits").resize_left, { desc = "Splits Resize Left" })
map("n", "<A-j>", require("smart-splits").resize_down, { desc = "Splits Resize Down" })
map("n", "<A-k>", require("smart-splits").resize_up, { desc = "Splits Resize Up" })
map("n", "<A-l>", require("smart-splits").resize_right, { desc = "Splits Resize Right" })
-- moving between splits
map("n", "<C-h>", require("smart-splits").move_cursor_left, { desc = "Splits Move Left" })
map("n", "<C-j>", require("smart-splits").move_cursor_down, { desc = "Splits Move Down" })
map("n", "<C-k>", require("smart-splits").move_cursor_up, { desc = "Splits Move Up" })
map("n", "<C-l>", require("smart-splits").move_cursor_right, { desc = "Splits Move Right" })
map("n", "<C-\\>", require("smart-splits").move_cursor_previous, { desc = "Splits Move Previous" })
-- swapping buffers between windows
map("n", "<leader><leader>h", require("smart-splits").swap_buf_left, { desc = "Splits Swap Left" })
map("n", "<leader><leader>j", require("smart-splits").swap_buf_down, { desc = "Splits Swap Down" })
map("n", "<leader><leader>k", require("smart-splits").swap_buf_up, { desc = "Splits Swap Up" })
map("n", "<leader><leader>l", require("smart-splits").swap_buf_right, { desc = "Splits Swap Right" })

--cmake mappings
map("n", "<leader>cc", "<CMD> CMakeGenerate <CR>", { desc = "CMake Configure" })
map("n", "<leader>cb", "<CMD> CMakeBuild <CR>", { desc = "CMake Build" })
map("n", "<leader>cr", "<CMD> CMakeRun <CR>", { desc = "CMake Run" })
map("n", "<leader>cd", "<CMD> CMakeDebug <CR>", { desc = "CMake Debug" })

--vimtex mappings
map("n", "<leader>li", "<CMD> VimtexInfo <CR>", { desc = "Vimtex Info" })
map("n", "<leader>ll", "<CMD> VimtexCompile <CR>", { desc = "Vimtex Compile" })

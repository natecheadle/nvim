local map = vim.keymap.set

map("i", "jj", "<ESC>", { desc = "Escape insert mode with jj" })

map("v", "<leader>rf", "y:%s/<c-r>0//g<left><left>", { desc = "Replace selection in file" })

map("n", "<leader>df", function()
	require("conform").format()
end, { desc = "Format Document" })

map("n", "<leader>bn", ":bnext<cr>", { desc = "Next Buffer" })
map("n", "<leader>bp", ":bprevious<cr>", { desc = "Previous Buffer" })
map("n", "<leader>bd", ":bdelete<cr>", { desc = "Delete Buffer" })

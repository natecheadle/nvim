return {
	"mfussenegger/nvim-dap-python",
	config = function()
		require("dap-python").setup("python")
		require("dap-python").test_runner = "pytest"
	end,
}

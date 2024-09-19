return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"nvim-neotest/nvim-nio",
	},
	config = function()
		local dap = require("dap")
		local mason_registry = require("mason-registry")

		local codelldb = mason_registry.get_package("codelldb")
		local codelldb_path = codelldb:get_install_path() .. "/extension/adapter/codelldb"

		local netcoredbg = mason_registry.get_package("netcoredbg")
		local netcoredbg_path = netcoredbg:get_install_path() .. "/extension/netcoredbg/ntecoredbg"

		dap.adapters.codelldb = {
			type = "server",
			host = "127.0.0.1",
			port = 13000,
		}

		dap.adapters.codelldb = {
			type = "server",
			port = "${port}",
			executable = {
				-- CHANGE THIS to your path!
				command = codelldb_path,
				args = { "--port", "${port}" },

				-- On windows you may have to uncomment this:
				-- detached = false,
			},
		}

		dap.adapters.coreclr = {
			type = "executable",
			command = netcoredbg_path,
			args = { "--interpreter=vscode" },
		}

		dap.adapters.netcoredbg = {
			type = "executable",
			command = netcoredbg_path,
			args = { "--interpreter=vscode" },
		}

		dap.configurations.cs = {
			{
				type = "coreclr",
				name = "launch - netcoredbg",
				request = "launch",
				program = function()
					return vim.fn.input("Path to dll: ", vim.fn.getcwd() .. "/bin/Debug", "file")
				end,
			},
		}
	end,
	event = "VeryLazy",
}

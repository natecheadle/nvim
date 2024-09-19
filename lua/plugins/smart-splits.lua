return {
	"mrjones2014/smart-splits.nvim",
	keys = {
		-- resize splits
		{
			"<A-h>",
			function()
				require("smart-splits").resize_left()
			end,
			mode = "n",
			desc = "Splits Resize Left",
		},
		{
			"<A-j>",
			function()
				require("smart-splits").resize_down()
			end,
			mode = "n",
			desc = "Splits Resize Down",
		},
		{
			"<A-k>",
			function()
				require("smart-splits").resize_up()
			end,
			mode = "n",
			desc = "Splits Resize Up",
		},
		{
			"<A-l>",
			function()
				require("smart-splits").resize_right()
			end,
			mode = "n",
			desc = "Splits Resize Up",
		},
		--move cursor
		{
			"<C-h>",
			function()
				require("smart-splits").move_cursor_left()
			end,
			mode = "n",
			desc = "Splits Move Left",
		},
		{
			"<C-j>",
			function()
				require("smart-splits").move_cursor_down()
			end,
			mode = "n",
			desc = "Splits Move Down",
		},
		{
			"<C-k>",
			function()
				require("smart-splits").move_cursor_up()
			end,
			mode = "n",
			desc = "Splits Move Up",
		},
		{
			"<C-l>",
			function()
				require("smart-splits").move_cursor_right()
			end,
			mode = "n",
			desc = "Splits Move Up",
		},
		{
			"<C-\\>",
			function()
				require("smart-splits").move_cursor_previous()
			end,
			mode = "n",
			desc = "Splits Move Previous",
		},
		--swap buffer
		{
			"<<leader><leader>-h>",
			function()
				require("smart-splits").swap_buf_left()
			end,
			mode = "n",
			desc = "Splits Swap Left",
		},
		{
			"<<leader><leader>-j>",
			function()
				require("smart-splits").swap_buf_down()
			end,
			mode = "n",
			desc = "Splits Swap Down",
		},
		{
			"<<leader><leader>-k>",
			function()
				require("smart-splits").swap_buf_up()
			end,
			mode = "n",
			desc = "Splits Swap Up",
		},
		{
			"<<leader><leader>-l>",
			function()
				require("smart-splits").swap_buf_right()
			end,
			mode = "n",
			desc = "Splits Swap Up",
		},
	},
}

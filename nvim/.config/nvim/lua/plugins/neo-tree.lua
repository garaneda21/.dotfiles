return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	keys = {
		{ "<leader>e", ":Neotree focus<CR>", desc = "NeoTree focus", silent = true },
		{ "<leader>r", ":Neotree reveal<CR>", desc = "NeoTree [r]eveal", silent = true },
		{ "\\", ":Neotree close<CR>", desc = "NeoTree Close", silent = true },
	},
	opts = {
		close_if_last_window = true,
		follow_current_file = true,
		filesystem = {
			window = {
                width = 35,
				mappings = {
					["O"] = "system_open",
				},
			},
		},
		commands = {
			system_open = function(state)
				local node = state.tree:get_node()
				local path = node:get_id()
				-- -- macOs: open file in default application in the background.
				-- vim.fn.jobstart({ "open", path }, { detach = true })
				-- Linux: open file in default application
				vim.fn.jobstart({ "xdg-open", path }, { detach = true })
			end,
		},
	},
}

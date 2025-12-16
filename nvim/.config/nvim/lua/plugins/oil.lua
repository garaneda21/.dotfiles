return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = false,
	keys = {
		{ "<leader>-", ":Oil<CR>", desc = "Open parent directory", silent = true },
	},
	opts = {
		default_file_explorer = true,
		columns = { "icon", "permissions", "size", "mtime", },
	},
}

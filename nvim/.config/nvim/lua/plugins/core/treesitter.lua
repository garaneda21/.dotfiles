return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
	},
	{
		"MeanderingProgrammer/treesitter-modules.nvim",
		config = function()
			require("treesitter-modules").setup({
				ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
				highlight = { enable = true },
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<Leader>ts",
						node_incremental = "n",
						node_decremental = "p",
						scope_incremental = "s",
					},
				},
			})
		end,
	},
}

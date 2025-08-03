return {
	-- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		opts = {
			styles = {
				comments = { italic = true },
			},
			on_highlights = function(highlights)
				highlights.EndOfBuffer = { fg = "#4D5574" }
			end,
		},
	},
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		opts = {
			undercurl = true,
		},
	},
	{
		"EdenEast/nightfox.nvim",
		priority = 1000,
		opts = {
			styles = {
				comments = "italic",
			},
		},
	},
}

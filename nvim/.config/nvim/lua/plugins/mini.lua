return {
	{
		"nvim-mini/mini.statusline",
		version = "*",
		-- dependencies = { 'nvim-mini/mini.icons', version = '*' }
		opts = {
			use_icons = vim.g.have_nerd_font
		},
	},
	{
		"nvim-mini/mini.align",
		version = "*",
		opts = {},
	}
}

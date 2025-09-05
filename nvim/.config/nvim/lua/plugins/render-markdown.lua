return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
	---@module 'render-markdown'
	---@type render.md.UserConfig

	opts = {
		file_types = { "markdown", "vimwiki" },
		render_modes = { "n", "c", "t", "i" },
		sign = { enabled = false },
		code = { width = "block", right_pad = 4 },
		quote = { repeat_linebreak = true },
		win_options = {
			showbreak = {
				default = "",
				rendered = "  ",
			},
			breakindent = {
				default = false,
				rendered = true,
			},
			breakindentopt = {
				default = "",
				rendered = "",
			},
		},

		vim.treesitter.language.register("markdown", "vimwiki"),
	},
}

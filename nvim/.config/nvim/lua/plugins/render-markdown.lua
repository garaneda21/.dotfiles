return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
	---@module 'render-markdown'
	---@type render.md.UserConfig

	opts = {
		file_types = { "markdown", "vimwiki" },
		render_modes = { "n", "c", "t", "i" },
		quote = { repeat_linebreak = true },
		sign = { enabled = false },
		code = { width = "block", left_pad = 2, right_pad = 4 },

		vim.treesitter.language.register("markdown", "vimwiki"),
	},
}

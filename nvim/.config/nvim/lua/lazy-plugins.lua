-- [[ Configure and install plugins ]]

require("lazy").setup({
	-- Cargar configuraciones
	require("plugins.autopairs"),
	require("plugins.blink-cmp"),
	require("plugins.colorscheme"),
	require("plugins.conform"),
	require("plugins.gitsigns"),
	require("plugins.indent-blankline"),
	require("plugins.lint"),
	require("plugins.lspconfig"),
	require("plugins.lualine"),
	require("plugins.neo-tree"),
	require("plugins.nvim-colorizer"),
	require("plugins.render-markdown"),
	require("plugins.telescope"),
	require("plugins.todo-comments"),
	require("plugins.treesitter"),
	require("plugins.undotree"),
	require("plugins.vimtex"),
	require("plugins.vimwiki"),
	require("plugins.which-key"),
	require("plugins.zen-mode"),

}, {
	ui = {
		-- If you are using a Nerd Font: set icons to an empty table which will use the
		-- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})

-- vim: ts=2 sts=2 sw=2 et

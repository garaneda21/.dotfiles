-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({

	-- IDE
	require("plugins.core.blink-cmp"),
	require("plugins.core.lspconfig"),
	require("plugins.core.treesitter"),
	require("plugins.core.conform"),
	require("plugins.core.lint"),
	require("plugins.core.gitsigns"),
	require("plugins.core.telescope"),
	require("plugins.core.lazydev"),

	-- Plugins
	require("plugins.colorscheme"),
	require("plugins.neo-tree"),
	require("plugins.oil"),
	require("plugins.zen-mode"),
	require("plugins.mini"),

	-- QoL
	require("plugins.autopairs"),
	require("plugins.guest-indent"),
	require("plugins.indent-blankline"),
	require("plugins.nvim-colorizer"),
	require("plugins.nvim-ts-autotag"),
	require("plugins.which-key"),
	require("plugins.undotree"),
	require("plugins.render-markdown"),

	-- Otra Funcionalidad
	--require("plugins.vimtex"),
	--require("plugins.obsidian"),
	require("plugins.vimwiki"),
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

return {
	"folke/zen-mode.nvim",
	opts = {
		window = {
			backdrop = 1,
			width = 100, -- width of the Zen window
			height = 0.95, -- height of the Zen window
			options = {
				number = true, -- disable number column
				relativenumber = true, -- disable relative numbers
				foldcolumn = "0", -- disable fold column
			},
		},
		plugins = {
			options = {
				laststatus = 3,
			},
			gitsigns = { enabled = true },
		},
		-- callback where you can add custom code when the Zen window opens
		on_open = function()
			vim.o.linebreak = true
			vim.o.spell = true
			vim.o.spelllang = "en_us,es"
		end,
		-- callback where you can add custom code when the Zen window closes
		on_close = function()
			vim.o.linebreak = false
			vim.o.spell = false
		end,
	},
	keys = {
		{ "<leader>z", ":ZenMode<CR>", desc = "Toogle [z]enMode", silent = true },
	},
}

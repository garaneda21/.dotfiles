return {
	"folke/zen-mode.nvim",
	opts = {
		window = {
			backdrop = 1,
			width = 120, -- width of the Zen window
			height = 0.95, -- height of the Zen window
			options = {
				number = false, -- disable number column
				relativenumber = false, -- disable relative numbers
				foldcolumn = "0", -- disable fold column
			},
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

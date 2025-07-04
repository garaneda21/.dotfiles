return {
	"folke/zen-mode.nvim",
	config = function()
		vim.keymap.set("n", "<leader>z", ":ZenMode<CR>", { desc = "Toogle [z]enMode", silent = true })
	end,
	opts = {
		window = {
			backdrop = 1,
			width = 120, -- width of the Zen window
			height = 0.90, -- height of the Zen window
			options = {
				number = false, -- disable number column
				relativenumber = false, -- disable relative numbers
				foldcolumn = "0", -- disable fold column
			},
		},
	},
	-- callback where you can add custom code when the Zen window opens
	on_open = function(win) end,
	-- callback where you can add custom code when the Zen window closes
	on_close = function() end,
}

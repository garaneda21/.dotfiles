return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},
	{
		"EdenEast/nightfox.nvim",
		name = "nightfox",
		priority = 1000,
		config = function()
            -- vim.cmd.colorscheme "onedark"
        end,
	},
	{
		"navarasu/onedark.nvim",
		name = "onedark",
		priority = 1000,
        config = function ()
            local onedark = require("onedark")
    		onedark.setup({
    			style = "cool",
    			transparent = false,
                toggle_style_key = "<leader>ts",
                code_style = {
                    comments = 'italic',
                },
    		})
            vim.cmd.colorscheme "onedark"
        end,
	},
}

return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},
	{
		"navarasu/onedark.nvim",
		name = "onedark",
		priority = 1000,
        config = function ()
            local onedark = require("onedark")
    		onedark.setup({
    			style = "deep",
    			transparent = false,
                toggle_style_key = "<leader>ts",
                term_colors = true,
                cmp_itemkind_reverse = false,
                code_style = {
                    comments = 'italic',
                },
    		})

            require('onedark').load()
        end,
	},
}

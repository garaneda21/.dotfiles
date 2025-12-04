return {
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		config = function ()
			--@diagnostic disable-next-line: missing-fields
			require('tokyonight').setup {
				transparent = false, -- Enable this to disable setting the background color
				styles = {
					comments = { italic = true },
				},
				on_highlights = function(highlights)
					highlights.EndOfBuffer = { fg = "#4D5574" }
				end,
			}

			vim.cmd.colorscheme 'tokyonight-night'
		end
	},
}


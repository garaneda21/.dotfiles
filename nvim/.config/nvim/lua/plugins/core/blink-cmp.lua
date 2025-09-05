return {
	"saghen/blink.cmp",
	event = "VimEnter",
	version = "1.*",
	dependencies = {
		{
			"L3MON4D3/LuaSnip",
			version = "2.*",
			build = (function()
				-- Build Step is needed for regex support in snippets.
				-- This step is not supported in many windows environments.
				-- Remove the below condition to re-enable on windows.
				if vim.fn.has("win32") == 1 or vim.fn.executable("make") == 0 then
					return
				end
				return "make install_jsregexp"
			end)(),
			dependencies = {
				{
					"rafamadriz/friendly-snippets",
					config = function()
						require("luasnip.loaders.from_vscode").lazy_load()
					end,
				},
			},
			config = function()
				local filetype_extend = require("luasnip").filetype_extend

				require("luasnip").setup({
					-- Para insertar tab en insert mode después de usar un snipper
					region_check_events = "CursorHold,InsertLeave,InsertEnter",
					delete_check_events = "TextChanged,InsertEnter",

					filetype_extend("vimwiki", { "markdown" }),
					filetype_extend("php", { "html", "css", "phpdoc", "blade" }),
					filetype_extend("blade", { "html", "css", "phpdoc", "php" }),
					filetype_extend("javascriptreact", { "html" }),
				})
			end,
		},
	},

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = { preset = "default" },
		appearance = { nerd_font_variant = "normal" },
		completion = { documentation = { auto_show = true, auto_show_delay_ms = 500 } },
		sources = {
			default = { "lazydev", "lsp", "path", "snippets" },
			providers = {
				lazydev = {
					name = "LazyDev",
					module = "lazydev.integrations.blink",
					score_offset = 100,
				}
			}
		},
		-- [[ No se que hace, pero los snippets extendidos los duplica.
		--    Como está comentado, no incluye los snippets custom de luasnip.
		--    Puede que tenga que refactorizar el trozo de código que instala LuaSnip,
		--    	lo demás está bien.
		-- ]]
		snippets = { preset = "luasnip" },
		fuzzy = { implementation = "prefer_rust_with_warning" },
		signature = { enabled = true },
	},
	opts_extend = { "sources.default" },
}

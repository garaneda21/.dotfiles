return {
	"obsidian-nvim/obsidian.nvim",
	version = "*", -- use latest release, remove to use latest commit
	ft = "markdown",
	---@module 'obsidian'
	---@type obsidian.config
	opts = {
		legacy_commands = false, -- this will be removed in the next major release
		workspaces = { {
			name = "personal",
			path = "~/Documentos/MyWiki/",
		} },

		frontmatter = {
			enabled = false,
			sort = { "id", "aliases", "tags" },
		},

		templates = {
			folder = "Plantillas",
			date_format = "%Y-%m-%d",
			time_format = "%H:%M",
			-- A map for custom variables, the key should be the variable and the value a function
			substitutions = {},
		},
	}
}

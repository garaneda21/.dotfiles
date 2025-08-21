return {
	"catgoose/nvim-colorizer.lua",
	event = "BufReadPre",
	opts = { -- set to setup table
        filetypes = {"html", "css", "javascript*", "blade"},
		user_default_options = {
			-- modos: "background", "foreground", "virtualtext"
			-- mode = "virtualtext",
            css = true,
			tailwind = true,
		},
	},
}

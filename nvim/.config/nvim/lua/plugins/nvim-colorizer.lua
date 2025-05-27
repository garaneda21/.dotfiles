return {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = { -- set to setup table
        user_default_options = {
            -- modos: "background", "foreground", "virtualtext"
            mode = "virtualtext",
            tailwind = true,
        }
    },
}

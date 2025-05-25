return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },

    config = function()
        vim.keymap.set("n", "<leader>e", ":Neotree focus<CR>")
        vim.keymap.set("n", "\\", ":Neotree close<CR>")

        require("neo-tree").setup({
            close_if_last_window = true,
            follow_current_file = true,

            filesystem = {
                window = {
                    mappings = {
                        ["O"] = "system_open",
                    },
                },
            },
            commands = {
                system_open = function(state)
                    local node = state.tree:get_node()
                    local path = node:get_id()
                    -- -- macOs: open file in default application in the background.
                    -- vim.fn.jobstart({ "open", path }, { detach = true })
                    -- Linux: open file in default application
                    vim.fn.jobstart({ "xdg-open", path }, { detach = true })
                end,
            },
        })
    end,
}

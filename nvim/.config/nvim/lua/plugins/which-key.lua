return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        delay = 0,

        -- Document existing key chains
        spec = {
            { "<leader>s", group = "[S]earch" },
            { "<leader>t", group = "[T]oggle" },
            { "<leader>h", group = "Git [H]unk", mode = { "n", "v" } },
        },
    },
}

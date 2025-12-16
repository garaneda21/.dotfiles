return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    main = "nvim-treesitter.configs",
    opts = {
        ensure_installed = {
            "c",
            "lua",
            "luadoc",
            "vim",
            "vimdoc",
            "query",
            "markdown",
            "markdown_inline",
            "bash",
            "diff",
            "html",
        },
        sync_install = false,
        auto_install = false,
        indent = { enable = true, disable = { "ruby", "html" } },
        highlight = {
            enable = true,
            disable = { "dockerfile" },
            additional_vim_regex_highlighting = { "ruby" },
        },
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "<leader>ti",
                node_incremental = "<leader>ti",
                node_decremental = "<leader>td",
                scope_incremental = "<leader>ts",
            },
        },
    }
}

return { -- Autoformat
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
        {
            "<leader>f",
            function()
                require("conform").format({ async = true, lsp_format = "fallback" })
            end,
            mode = "",
            desc = "[F]ormat buffer",
        },
    },
    opts = {
        notify_on_error = false,
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "isort", "black" },

            -- You can use 'stop_after_first' to run the first available formatter from the list
            javascript = { "prettierd", "prettier", stop_after_first = true },
            php = { "pint", stop_after_first = true },
            blade = { "blade-formatter", stop_after_first = true },
        },
    },
}

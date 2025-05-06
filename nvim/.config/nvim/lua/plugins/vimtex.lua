return {
    "lervag/vimtex",
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
        -- VimTeX configuration goes here, e.g.
        vim.g.vimtex_view_method = "zathura"

        -- Or with a generic interface:
        -- vim.g.vimtex_view_general_viewer = 'okular'
        -- vim.g.vimtex_view_general_options = '--unique file:@pdf#src:@line@tex'

        vim.g.vimtex_syntax_enabled = false

        vim.g.vimtex_compiler_latexmk = { out_dir = 'build' }

        -- Atajos
        vim.keymap.set('v', '<leader>b', 'c\\textbf{<C-r>"}', { silent = true })
        vim.keymap.set('v', '<leader>i', 'c\\textit{<C-r>"}', { silent = true })
    end
}



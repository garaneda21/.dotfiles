return {
    "lervag/vimtex",
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
        -- Usar caracteres y glifos
        vim.o.conceallevel = 2
        vim.o.linebreak = true

        vim.g.vimtex_view_method = "zathura"

        -- Or with a generic interface:
        -- vim.g.vimtex_view_general_viewer = 'okular'
        -- vim.g.vimtex_view_general_options = '--unique file:@pdf#src:@line@tex'

        vim.g.vimtex_syntax_enabled = true

        vim.g.vimtex_compiler_latexmk = { out_dir = 'build' }

        -- Desactivar quickfix para advertencias
        vim.g.vimtex_quickfix_open_on_warning = 0

        -- Atajos
        vim.keymap.set('v', '<leader>b', 'c\\textbf{<C-r>"}', { silent = true })
        vim.keymap.set('v', '<leader>i', 'c\\textit{<C-r>"}', { silent = true })
    end
}



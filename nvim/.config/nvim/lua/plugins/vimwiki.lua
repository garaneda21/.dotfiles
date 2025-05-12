return {
    "vimwiki/vimwiki",
    init = function()
        vim.g.vimwiki_list = { {
            path = '~/Documentos/Obsidian Vault/',
            syntax = 'markdown',
            ext = '.md'
        } }

        -- desactivar vimwiki fuera de la ruta especificada
        vim.g.vimwiki_global_ext = 0
    end
}

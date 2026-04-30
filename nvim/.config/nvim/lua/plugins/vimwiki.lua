return {
	"vimwiki/vimwiki",
	init = function()
		vim.g.vimwiki_list = { {
			path = "~/Documentos/vimwiki/",
			syntax = "markdown",
			ext = ".md",
			auto_diary_index = 1,
		} }

		-- desactivar vimwiki fuera de la ruta especificada
		-- (para usar markdown normalmente)
		vim.g.vimwiki_global_ext = 0

        -- cambiar directorio al de vimwiki
        -- vim.g.vimwiki_auto_chdir = 1
	end,
}

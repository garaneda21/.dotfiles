return {
	"vimwiki/vimwiki",
	init = function()
		vim.g.vimwiki_list = { {
			path = "~/Documentos/Obsidian Vault/",
			syntax = "markdown",
			ext = ".md",
		} }

		-- desactivar vimwiki fuera de la ruta especificada
		vim.g.vimwiki_global_ext = 0
        -- cambiar directorio al de vimwiki
        vim.g.vimwiki_auto_chdir = 1
	end,
}

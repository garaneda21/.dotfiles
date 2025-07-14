return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
	---@module 'render-markdown'
	---@type render.md.UserConfig

    config = function ()
        file_types = { "markdown", "vimwiki" }
        vim.treesitter.language.register('markdown', 'vimwiki')
        render_modes = { 'n', 'c', 't', 'i'}
    end
}

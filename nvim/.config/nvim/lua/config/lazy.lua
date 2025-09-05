-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({

    -- Core Plugins
    require('plugins.core.blink-cmp'),
    require('plugins.core.conform'),
    require('plugins.core.gitsigns'),
    require('plugins.core.lazydev'),
    require('plugins.core.lint'),
    require('plugins.core.lspconfig'),
    require('plugins.core.telescope'),
    require('plugins.core.treesitter'),

    -- Plugins
    require('plugins.autopairs'),
    require('plugins.colorscheme'),
    require('plugins.guest-indent'),
    require('plugins.indent-blankline'),
    require('plugins.neo-tree'),
    require('plugins.nvim-colorizer'),
    require('plugins.nvim-ts-autotag'),
    require('plugins.oil'),
    require('plugins.render-markdown'),
    require('plugins.undotree'),
    require('plugins.vimtex'),
    require('plugins.vimwiki'),
    require('plugins.which-key'),
    require('plugins.zen-mode'),

    require('plugins.mini'),
})

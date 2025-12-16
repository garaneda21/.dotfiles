-- Para configurar soporte para distintos lenguajes editar:
-- * lspconfig: LSP's y Mason Tools
-- * conform: configura formateadores
-- * lint: configura linters

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = false

require("config.options")
require("config.keymaps")
require("config.plugins")
require("config.snippets")

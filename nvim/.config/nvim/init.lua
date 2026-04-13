--[[ NOTAS
    Dependencias
    - tree-sitter-cli

    Para configurar soporte para lenguajes, editar:
    - lspconfig  : LSP's y Mason-Tools
    - treesitter : instalar automaticamente parseadores
    - conform    : configurar formateadores
    - lint       : configurar linters

    Otros:
    - Por algún motivo oil.nvim no deja instalar el spellcheck.
]]

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

require("options")
require("keymaps")
require("plugins")
require("snippets")

vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")

vim.cmd("set smartindent")

vim.cmd("set scrolloff=8")

vim.cmd("set clipboard=unnamedplus")

vim.cmd("set number")
vim.cmd("set relativenumber")

-- Scroll con zz
vim.cmd(":noremap <C-d> <C-d>zz")
vim.cmd(":noremap <C-u> <C-u>zz")

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

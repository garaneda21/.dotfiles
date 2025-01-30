vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")

vim.cmd("set smartindent")

vim.cmd("set scrolloff=8")

vim.cmd("set clipboard=unnamedplus")

vim.cmd("set number")
vim.cmd("set relativenumber")

vim.cmd("set background=dark")
vim.cmd("syntax on")

vim.cmd("set cursorline")
-- vim.cmd("set cursorcolumn")

-- Mantener cursos a la mitad de la pantalla en scroll
vim.cmd(":noremap <C-d> <C-d>zz")
vim.cmd(":noremap <C-u> <C-u>zz")

-- Mover un grupo de líneas manteniendo shift
vim.cmd("vnoremap J :m '>+1<CR>gv=gv")
vim.cmd("vnoremap K :m '<-2<CR>gv=gv")

-- Activar Comprobación de Ortografía
vim.cmd("map <F6> :setlocal spell! spelllang=en_us,es<CR>")

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

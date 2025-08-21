-- [[ Setting options ]]

vim.o.number = true
vim.o.relativenumber = true

vim.o.autoindent = true
-- vim.o.smartindent = true -- conflicto con plugins
vim.o.smarttab = true

vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
-- vim.o.softtabstop = 4

vim.o.swapfile = false
vim.o.mouse = 'a'

vim.o.colorcolumn = "100"

vim.o.showmode = false
vim.o.scrolloff = 10
vim.o.confirm = true
vim.o.cursorline = true

vim.o.breakindent = true
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

vim.o.list = true
vim.opt.listchars = { tab = '▎ ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

vim.cmd 'autocmd FileType yaml setlocal ts=2'
vim.cmd 'autocmd FileType yml setlocal ts=2'

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

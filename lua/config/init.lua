vim.g.mapleader = ' '

-- General
vim.o.nu = true
vim.o.rnu = true
vim.o.signcolumn = 'yes'
vim.o.splitbelow = true
vim.o.title = true
vim.o.scrolloff = 7
vim.o.rules = true
vim.o.colorcolumn = 120
vim.o.smartcase = true
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.showmatch = true
vim.o.mat = 2
vim.o.encoding = 'utf-8'

-- Tabs and indenting
vim.o.ts = 4
vim.o.sw = 4
vim.o.sta = true
vim.o.ai = true
vim.o.expandtab = true
vim.o.smarttab = true
vim.o.wrap = false

-- Mouse support
vim.o.mouse = ""

-- Auto Cmd's
vim.cmd([[
    augroup FILES
        autocmd!
        autocmd BufEnter *.blade.php :set ft=blade
        autocmd BufEnter *.php :set autoindent
    augroup END
]])

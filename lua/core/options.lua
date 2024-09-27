vim.g.mapleader = ' '

local opt = vim.opt

-- General
opt.nu = false
opt.rnu = true
opt.signcolumn = 'yes'
opt.splitbelow = true
opt.title = true
opt.scrolloff = 7
opt.ruler = true
opt.colorcolumn = "120"
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.showmatch = true
opt.mat = 2
opt.encoding = 'utf-8'

-- Tabs and indenting
opt.ts = 4
opt.sw = 4
opt.sta = true
opt.ai = true
opt.expandtab = true
opt.smarttab = true
opt.wrap = false

-- Mouse support
opt.mouse = ""

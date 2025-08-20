vim.g.mapleader = " "

local opt = vim.opt

-- General
opt.nu = false
opt.rnu = true
opt.signcolumn = "yes"
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
opt.encoding = "utf-8"

-- Tabs and indenting
opt.ts = 4
opt.sw = 4
opt.sta = true
opt.ai = true
opt.expandtab = true
opt.smarttab = true

-- Mouse support
opt.mouse = ""
opt.encoding = "utf-8"

-- Disable text wrap
vim.opt.wrap = true

-- Prevent line wrapping
vim.opt.breakindent = true

-- Faster scrolling
vim.opt.lazyredraw = true

-- Highlight yank
vim.api.nvim_create_autocmd("textyankpost", {
  group = vim.api.nvim_create_augroup("highlight_yank", { clear = true }),
  pattern = "*",
  desc = "highlight selection on yank",
  callback = function()
    vim.highlight.on_yank({ timeout = 200, visual = true })
  end,
})

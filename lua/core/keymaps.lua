vim.g.mapleader = ' '

local opts = { noremap = true }
local keymap = vim.keymap

-- Saving
keymap.set('n', '<leader>w', ':w!<cr>', opts)

-- Visual Block mode mapping
keymap.set('n', '<leader>vl', '<C-v>', opts)

-- Highlight
keymap.set('n', '<leader>nH', ':nohl<cr>')

-- Terminal
keymap.set('n', '<leader>ot', ':split<cr>:terminal<cr>10<C-w>_', opts)
keymap.set('n', '<leader>oT', ':vsplit<cr>:terminal<cr>', opts)
keymap.set('t', '<C-w>N', '<C-\\><C-n>', opts)

-- Search
keymap.set('n', '<leader><cr>', ':nohl<cr>', opts)

-- Split Buffer
keymap.set('n', '<leader>ss', ':split<cr>', opts)
keymap.set('n', '<leader>sv', ':vsplit<cr>', opts)
keymap.set('n', '<leader>n', ':enew<cr>', opts)

-- Move selected lines
keymap.set('v', 'J', ":m '>+1'<CR>gv=gv", opts)
keymap.set('v', 'K', ":m '<-2<CR>gv=gv", opts)

-- Split navigation
keymap.set('n', '<C-h>', '<C-w>h', opts)
keymap.set('n', '<C-j>', '<C-w>j', opts)
keymap.set('n', '<C-k>', '<C-w>k', opts)
keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Code folding
keymap.set('v', '<leader>fo', 'zf', opts);
keymap.set('n', '<leader>fO', 'zo', opts);

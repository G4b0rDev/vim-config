local opts = { noremap = true }

-- Saving
vim.keymap.set('n', '<leader>w', ':w!<cr>', opts)

-- Highlight
vim.keymap.set('n', '<leader>nH', ':nohl<cr>')

-- Terminal
vim.keymap.set('n', '<leader>ot', ':split<cr>:terminal<cr>10<C-w>_', opts)
vim.keymap.set('n', '<leader>oT', ':vsplit<cr>:terminal<cr>', opts)
vim.keymap.set('t', '<C-w>N', '<C-\\><C-n>', opts)

-- Search
vim.keymap.set('n', '<leader><cr>', ':nohl<cr>', opts)

-- Split Buffer
vim.keymap.set('n', '<leader>ss', ':split<cr>', opts)
vim.keymap.set('n', '<leader>sv', ':vsplit<cr>', opts)

-- Move selected lines
vim.keymap.set('v', 'J', ":m '>+1'<CR>gv=gv", opts)
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", opts)

-- Split navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Fugitive config
-- See: https://github.com/tpope/vim-fugitive

local opts = { noremap = true }

vim.keymap.set('n', '<leader>gg', ':Git<cr>', opts)
vim.keymap.set('n', '<leader>gf', ':Git fetch<cr>', opts)
vim.keymap.set('n', '<leader>gp', ':Git pull<cr>', opts)
vim.keymap.set('n', '<leader>gP', ':Git push<cr>', opts)

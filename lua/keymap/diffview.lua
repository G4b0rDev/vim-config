-- Fugitive config
-- See: https://github.com/sindrets/diffview.nvim
local opts = { noremap = true }

vim.keymap.set('n', '<leader>gh', ':DiffviewFileHistory %<cr>', opts)

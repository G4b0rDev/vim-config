-- Plugin: junegunn/vim-easy-align
-- See: https://github.com/junegunn/vim-easy-align

local opts = { noremap = true }

vim.keymap.set('x', '<leader>fa', '<Plug>(EasyAlign)', opts)
vim.keymap.set('n', '<leader>fa', '<Plug>(EasyAlign)', opts)
vim.keymap.set('v', '<leader>ft', ':EasyAlign:<bar><cr>', opts)

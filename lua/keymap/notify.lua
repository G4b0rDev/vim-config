local notify = require('notify')
local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>nd', notify.dismiss, opts)

-- Telescope config
-- https://github.com/nvim-telescope/telescope.nvim

local builtin = require('telescope.builtin')
local opts = { noremap = true }

-- Telescope Search
vim.keymap.set('n', '<leader><leader>', builtin.find_files, opts)
vim.keymap.set('n', '<leader>lg', builtin.live_grep, opts)

vim.keymap.set('n', '<leader>,', builtin.buffers, opts)
vim.keymap.set('n', '<leader>gb', builtin.git_branches, opts)
vim.keymap.set('n', '<leader>th', builtin.help_tags, opts)
vim.keymap.set('n', '<leader>fg', builtin.live_grep, opts)

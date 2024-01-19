local opts = { noremap = true }

vim.keymap.set('n', [[<leader>ot]], vim.cmd.ToggleTerm)
vim.keymap.set('n', [[<leader>oT]], vim.cmd.ToggleFloatTerm)

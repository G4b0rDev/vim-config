local opts = {
    noremap = true,
    silent = true,
}

vim.keymap.set('n', '<leader>op', ':NeoTreeShowToggle<cr>', opts)

-- Plugin: DiffView
-- See: https://github.com/sindrets/diffview.nvim
return {
    'sindrets/diffview.nvim',
    config = function ()
        -- keymaps
        local opts = { noremap = true }

        vim.keymap.set('n', '<leader>gh', ':DiffviewFileHistory %<cr>', opts)
    end
}

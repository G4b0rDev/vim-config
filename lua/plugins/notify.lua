-- Plugin: Notify
-- See: https://github.com/rcarriga/nvim-notify
return {
    'rcarriga/nvim-notify',
    config = function ()
        -- keymaps
        local notify = require('notify')
        local opts = { noremap = true, silent = true }

        vim.keymap.set('n', '<leader>nd', notify.dismiss, opts)
    end
}

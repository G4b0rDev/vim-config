-- Plugin: Formatter/Confrom
-- See: https://github.com/stevearc/conform.nvim
return {
    'stevearc/conform.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function ()
        -- config
        local conform = require('conform')

        conform.setup({
            formattery_by_ft = {
                javascript = { 'prettier' },
                typescript = { 'prettier' },
                svelte = { 'prettier' },
                css = { 'prettier' },
                html = { 'prettier' },
                json = { 'prettier' },
                markdown = { 'prettier' },
                lua = { 'stylua' },
                blade = { 'bladeformatter' },
            },
            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 500,
            },
        })

        -- keymaps
        vim.keymap.set({ 'n', 'v'}, '<leader>mp', function ()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 500,
            })
        end, { desc = 'Format file or range in visual mode' })
    end
}

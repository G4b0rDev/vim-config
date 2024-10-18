-- Plugin: CopilotChat
-- See: https://github.com/CopilotC-Nvim/CopilotChat.nvim
return {
    {
        'CopilotC-Nvim/CopilotChat.nvim',
        branch = "canary",
        dependencies = {
            { "zbirenbaum/copilot.lua" },
            { "nvim-lua/plenary.nvim" },
        },
        build = "make tiktoken",
        opts = {
            debug = false,
            mappings = {
                complete = {
                    detail = "Use @<Tab> or /<Tab> for options.",
                    insert = "<Tab>",
                },
            }
        },
        config = function(_, opts)
            local chat = require('CopilotChat')

            chat.setup(opts)

            vim.keymap.set('n', '<leader>cc', function()
                chat.toggle()
            end, { noremap = true })

            vim.keymap.set('v', '<leader>cc', function()
                chat.toggle()
            end, { noremap = true })

            vim.api.nvim_create_autocmd("BufEnter", {
                pattern = "copilot-*",
                callback = function()
                    vim.opt_local.relativenumber = true
                    vim.api.nvim_buf_set_keymap(0, 'i', '<Tab>', 'copilot#Accept("<CR>")', { expr = true, silent = true })
                end,
            })
        end,
    },
}

-- Telescope config
-- https://github.com/nvim-telescope/telescope.nvim
return {
    'nvim-telescope/telescope.nvim',
    cmd = 'Telescope',
    tag = '0.1.8',
    requires = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        'nvim-tree/nvim-web-devicons',
        'folke/todo-comments.nvim',
    },
    keys = {
        { '<leader><leader>', ':Telescope find_files<CR>',   mode = 'n' },
        { '<leader>tg',       ':Telescope live_grep<CR>',    mode = 'n' },
        { '<leader>,',        ':Telescope buffers<CR>',      mode = 'n' },
        { '<leader>gb',       ':Telescope git_branches<CR>', mode = 'n' },
        { '<leader>th',       ':Telescope help_tags<CR>',    mode = 'n' },
        { '<leader>fg',       ':Telescope live_grep<CR>',    mode = 'n' },
    },
    config = function()
        local telescope = require('telescope')
        local actions = require('telescope.actions')
        local transform_mod = require('telescope.actions.mt').transform_mod

        local trouble = require('trouble')
        local trouble_telescope = require('trouble.sources.telescope')

        -- or create your custom action
        local custom_actions = transform_mod({
            open_trouble_qflist = function(prompt_bufnr)
                trouble.toggle('quickfix')
            end,
        })

        telescope.setup({
            defaults = {
                path_display = { 'absolute' },
                mappings = {
                    i = {
                        ['<C-k>'] = actions.move_selection_previous, -- move to prev result
                        ['<C-j>'] = actions.move_selection_next, -- move to next result
                        ['<C-q>'] = actions.send_selected_to_qflist + custom_actions.open_trouble_qflist,
                        ['<C-t>'] = trouble_telescope.open,
                    },
                },
            },
        })

        -- keymaps
        local keymap = vim.keymap
        local builtin = require('telescope.builtin')
        local opts = { noremap = true }

        -- Telescope Search
        keymap.set('n', '<leader><leader>', builtin.find_files, opts)
        keymap.set('n', '<leader>tg', builtin.live_grep, opts)

        keymap.set('n', '<leader>,', builtin.buffers, opts)
        keymap.set('n', '<leader>gb', builtin.git_branches, opts)
        keymap.set('n', '<leader>th', builtin.help_tags, opts)
        keymap.set('n', '<leader>fg', builtin.live_grep, opts)
    end
}

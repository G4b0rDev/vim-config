return {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    event = 'BufEnter',
    config = function ()
        vim.o.termguicolors = true
        vim.o.background = 'dark'

        require('catppuccin').setup({
            flavour = 'macchiato', -- latte, frappe, macchiato, mocha
            background = { -- :h background
                light = 'latte',
                dark = 'mocha',
            },
            transparent_background = false, -- disables setting the background color.
            show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
            term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
            dim_inactive = {
                enabled = false, -- dims the background color of inactive window
                shade = 'dark',
                percentage = 0.15, -- percentage of the shade to apply to the inactive window
            },
            no_italic = false, -- Force no italic
            no_bold = false, -- Force no bold
            no_underline = false, -- Force no underline
            styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
                comments = { 'italic' }, -- Change the style of comments
                conditionals = { 'italic' },
                loops = {},
                functions = {},
                keywords = {},
                strings = {},
                variables = {},
                numbers = {},
                booleans = {},
                properties = {},
                types = {},
                operators = {},
            },
            color_overrides = {
                mocha = {
                --   rosewater = '#F5E0DC',
                flamingo = '#F2CDCD',
                --   mauve = '#DDB6F2',
                --   pink = '#F5C2E7',
                --   red = '#F28FAD',
                --   maroon = '#E8A2AF',
                --   peach = '#F8BD96',
                --   yellow = '#FAE3B0',
                --   green = '#ABE9B3',
                --   blue = '#96CDFB',
                --   sky = '#89DCEB',
                --   teal = '#B5E8E0',
                --   lavender = '#C9CBFF',
                --
                --   text = '#D9E0EE',
                --   subtext1 = '#BAC2DE',
                --   subtext0 = '#A6ADC8',
                --   overlay2 = '#C3BAC6',
                --   overlay1 = '#988BA2',
                --   overlay0 = '#6E6C7E',
                --   surface2 = '#6E6C7E',
                --   surface1 = '#575268',
                --   surface0 = '#302D41',
                --
                --   base = '#1E1E2E',
                --   mantle = '#1A1826',
                --   crust = '#161320',
                }
            },
            custom_highlights = {},
            integrations = {
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                treesitter = true,
                notify = true,
                barbar = true,
                mason = true,
                neotree = true,
                mini = {
                    enabled = true,
                    indentscope_color = '',
                },
                -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
            },
        })

        vim.cmd.colorscheme 'catppuccin'
        vim.cmd('colorscheme catppuccin')
    end
}

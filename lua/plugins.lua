return require('packer').startup(function(use)
    -- Packer
    use 'wbthomason/packer.nvim'
    use 'MunifTanjim/nui.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.4',
        requires = {
            { 'nvim-lua/plenary.nvim' }
        }
    }

    -- Airline
    use {
        'vim-airline/vim-airline',
        'vim-airline/vim-airline-themes',
    }

    -- Fugitive
    use 'tpope/vim-fugitive'

    -- One Dark Pro theme
    use 'olimorris/onedarkpro.nvim'

    use { 'catppuccin/nvim', as = 'catppuccin' }

    -- Treesitter
    use 'nvim-treesitter/nvim-treesitter'

    -- Easy Align
    use 'junegunn/vim-easy-align'

    -- GitSigns
    use 'lewis6991/gitsigns.nvim'

    -- Barbar
    use {
        'romgrk/barbar.nvim',
        requires = {
            { 'nvim-tree/nvim-web-devicons' }
        }
    }

    -- Neo Tree
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    }

    -- Icons
    use 'nvim-tree/nvim-web-devicons'

    -- LSP
    use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'saadparwaiz1/cmp_luasnip',
        'L3MON4D3/LuaSnip',
        'hrsh7th/cmp-nvim-lsp-signature-help',
        'rafamadriz/friendly-snippets',
    }

    -- Autopairs
    use 'windwp/nvim-autopairs'

    -- Laravel Blade highlight
    use 'jwalton512/vim-blade'

    -- Astro highlight
    use 'wuelnerdotexe/vim-astro'

    -- NerdCommenter
    use 'preservim/nerdcommenter'

    -- Svelte highlight
    use {
        "evanleck/vim-svelte",
        branch = "main"
    }

    use 'onsails/lspkind.nvim'

    -- Prettier
    use('jose-elias-alvarez/null-ls.nvim')
    use('MunifTanjim/prettier.nvim')

    -- Notify
    use 'rcarriga/nvim-notify'

    -- ToggleTerm
    use { 'akinsho/toggleterm.nvim', tag = '*' }
end)

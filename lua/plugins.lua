return require('packer').startup(function(use)
    -- Packer
    use 'wbthomason/packer.nvim'
    use 'MunifTanjim/nui.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
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

    -- Treesitter
    use 'nvim-treesitter/nvim-treesitter'

    -- Easy Align
    use 'junegunn/vim-easy-align'

    -- Signify
    use 'mhinz/vim-signify'

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

    -- LSP
    use {
        'neovim/nvim-lspconfig',
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'saadparwaiz1/cmp_luasnip',
        'L3MON4D3/LuaSnip',
        'hrsh7th/cmp-nvim-lsp-signature-help',
    }

    -- Mason
    use {
        'williamboman/mason.nvim',
        requires = {
            { 'williamboman/mason-lspconfig.nvim' }
        }
    }

    -- Autopairs
    use 'windwp/nvim-autopairs'

    -- Laravel Blade highlight
    use 'jwalton512/vim-blade'
end)

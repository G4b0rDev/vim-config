local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {'MunifTanjim/nui.nvim'},

    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        cmd = 'Telescope',
        tag = '0.1.4',
        requires = {
            "nvim-lua/plenary.nvim",
        }
    },

    -- Airline
    {
        'vim-airline/vim-airline',
        'vim-airline/vim-airline-themes',
        event = 'BufEnter'
    },

    -- Fugitive
    {
        'tpope/vim-fugitive',
        cmd = 'Git'
    },

    -- Treesitter
    {'nvim-treesitter/nvim-treesitter'},

    -- Easy Align
    {'junegunn/vim-easy-align'},

    -- GitSigns
    {
        'lewis6991/gitsigns.nvim',
        event = {'BufRead', 'BufNewFile'}
    },

    -- Barbar
    {
        'romgrk/barbar.nvim',
        requires = {
            {'nvim-tree/nvim-web-devicons'}
        },
        event = 'BufWinEnter'
    },

    -- Neo Tree
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        cmd = 'NvimTreeToggle'
    },

    -- Icons
    {'nvim-tree/nvim-web-devicons'},

    -- Mason
    {
        'williamboman/mason.nvim',
        dependencies = {
            'williamboman/mason-lspconfig.nvim',
        },
    },

    -- LSP
    {
        'neovim/nvim-lspconfig',
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'saadparwaiz1/cmp_luasnip',
        'hrsh7th/cmp-nvim-lsp-signature-help',
    },

    {
        'L3MON4D3/LuaSnip',
        version = 'v2.*',
        build = 'make install_jsregexp',
        dependencies = {
            'rafamadriz/friendly-snippets',
        },
    },

    -- Completion
    'hrsh7th/cmp-path',

    -- Autopairs
    'windwp/nvim-autopairs',

    -- Laravel Blade highlight
    'jwalton512/vim-blade',

    -- Astro highlight
    'wuelnerdotexe/vim-astro',

    -- NerdCommenter
    'preservim/nerdcommenter',

    -- Svelte highlight
    {
        "evanleck/vim-svelte",
        branch = "main",
        ft = {'svelte'}
    },

    -- lspkind.nvim
    {
        'onsails/lspkind.nvim',
        event = 'BufRead'
    },

    -- Prettier
    {'jose-elias-alvarez/null-ls.nvim'},
    {'MunifTanjim/prettier.nvim'},

    -- Notify
    'rcarriga/nvim-notify',

    -- ToggleTerm
    'akinsho/toggleterm.nvim',

    -- catppuccin theme
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    'sindrets/diffview.nvim',
})

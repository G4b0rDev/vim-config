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

    -- One Dark Pro theme
    {
        'olimorris/onedarkpro.nvim',
        config = function()
            -- Configuration for the theme
        end
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

    -- LSP
    {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'saadparwaiz1/cmp_luasnip',
        'L3MON4D3/LuaSnip',
        'hrsh7th/cmp-nvim-lsp-signature-help',
        'rafamadriz/friendly-snippets',
        event = 'BufRead'
    },

    -- Autopairs
    {'windwp/nvim-autopairs'},

    -- Laravel Blade highlight
    {'jwalton512/vim-blade'},

    -- Astro highlight
    {'wuelnerdotexe/vim-astro'},

    -- NerdCommenter
    {'preservim/nerdcommenter'},

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
    {'rcarriga/nvim-notify'},

    -- ToggleTerm
    {'akinsho/toggleterm.nvim'},

    -- Scrollbar
    {'petertriho/nvim-scrollbar'},

    -- Ultimate Autopair
    {
        'altermo/ultimate-autopair.nvim',
        event = {'InsertEnter', 'CmdlineEnter'},
        branch = 'v0.6',
        config = function ()
            require('ultimate-autopair').setup({
                --Config goes here
            })
        end
    },

    -- catppuccin theme
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
})

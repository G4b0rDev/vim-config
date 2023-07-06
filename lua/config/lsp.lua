local lspconfig = require('lspconfig')

require('luasnip.loaders.from_vscode').lazy_load()

require('mason').setup()
require('mason-lspconfig').setup({
    -- A list of servers to automatically install if they're not already installed. Example: { "rust_analyzer@nightly", "sumneko_lua" }
    -- This setting has no relation with the `automatic_installation` setting.
    ensure_installed = {
        "intelephense",
        "tailwindcss",
    },
})

-- Set up lspconfig.
-- local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('mason-lspconfig').setup_handlers {
    -- This is a default handler that will be called for each installed server (also for new servers that are installed during a session)
    function (server_name)
       lspconfig[server_name].setup {}
    end,

   -- You can also override the default handler for specific servers by providing them as keys, like so:
   ['lua_ls'] = function ()
       require('lspconfig')['lua_ls'].setup {
           settings = {
               Lua = {
                   diagnostics = {
                       -- Get the language server to recognize the `vim` global
                       globals = {'vim'},
                   },
               },
           },
       }
   end,

   ['intelephense'] = function ()
       require('lspconfig').intelephense.setup {
           settings = {
               telemetry = {
                   enabled = false,
               },
           },
       }
   end,

   ['cssls'] = function ()
       require('lspconfig').cssls.setup {
           settings = {
               lint = {
                   cssConflict = "warning",
                   invalidApply = "ignore",
                   invalidScreen = "error",
                   invalidVariant = "error",
                   invalidConfigPath = "error",
                   invalidTailwindDirective = "error",
                   recommendedVariantOrder = "warning"
               }
           },
       }
   end,
}

-- luasnip setup
local luasnip = require 'luasnip'

-- nvim-cmp setup
local cmp = require 'cmp'
local lspkind = require 'lspkind'

cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
            -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        end,
    },
    window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
        completion = {
            col_offset = -3 -- align the abbr and word on cursor (due to fields order below)
        }
    },
    formatting = {
        fields = { "kind", "abbr", "menu" },
        format = lspkind.cmp_format({
            mode = 'symbol_text', -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
            maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
            menu = ({ -- showing type in menu
            nvim_lsp = "[LSP]",
            path = "[Path]",
            buffer = "[Buffer]",
            luasnip = "[LuaSnip]",
        }),
        before = function(entry, vim_item) -- for tailwind css autocomplete
            if vim_item.kind == 'Color' and entry.completion_item.documentation then
                local _, _, r, g, b = string.find(entry.completion_item.documentation, '^rgb%((%d+), (%d+), (%d+)')
                if r then
                    local color = string.format('%02x', r) .. string.format('%02x', g) ..string.format('%02x', b)
                    local group = 'Tw_' .. color
                    if vim.fn.hlID(group) < 1 then
                        vim.api.nvim_set_hl(0, group, {fg = '#' .. color})
                    end
                    vim_item.kind = "■" -- or "⬤" or anything
                    vim_item.kind_hl_group = group
                    return vim_item
                end
            end
            -- vim_item.kind = icons[vim_item.kind] and (icons[vim_item.kind] .. vim_item.kind) or vim_item.kind
            -- or just show the icon
            vim_item.kind = lspkind.symbolic(vim_item.kind) and lspkind.symbolic(vim_item.kind) or vim_item.kind
            return vim_item
        end
    })
},
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
            --   cmp.select_prev_item()
            -- elseif luasnip.jumpable(-1) then
            --    luasnip.jump(-1)
            else
                fallback()
            end
        end, { 'i', 's' }),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        -- { name = 'vsnip' }, -- For vsnip users.
        { name = 'luasnip' }, -- For luasnip users.
        -- { name = 'ultisnips' }, -- For ultisnips users.
        -- { name = 'snippy' }, -- For snippy users.
    }, {
        { name = 'buffer' },
    })
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
        { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
        { name = 'buffer' },
    })
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})

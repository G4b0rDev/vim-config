require('mason').setup()
require('mason-lspconfig').setup()

local lsp_flags = {
    debounce_text_changes = 150, -- Default in nvim 0.7+
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("mason-lspconfig").setup_handlers {
    -- A list of servers to automatically install if they're not already installed. Example: { "rust_analyzer@nightly", "sumneko_lua" }
    -- This setting has no relation with the `automatic_installation` setting.
    ensure_installed = {
        "intelephense",
        "tailwindcss",
        "volar", -- VueJS
        "sumneko_lua", -- Lua
        "dockerls",
        "astro",
    },

    -- The first entry ( without a key ) will be the default handler
    -- and will be called for each installed server that doens't have a dedicated handler
    function (server_name)
        require("lspconfig")[server_name].setup {
            flags = lsp_flags,
            capabilities = capabilities,
        }
    end,
}

-- luasnip setup
local luasnip = require 'luasnip'

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },

    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
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
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { 'i', 's' }),
    }),

    source = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'nvim_lsp_signature_help' },
    },
})

local on_attach = function(_, bufnr)
    return require('completion').on_attach
end

require('lspconfig')['intelephense'].setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

require('lspconfig')['tailwindcss'].setup({
    capabilities = capabilities,
})

require('lspconfig')['sumneko_lua'].setup {
    settings = {
        Lua = {
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'},
            },
        },
    },
}

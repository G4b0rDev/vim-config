return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
    { "folke/neodev.nvim", opts = {} },
    "hrsh7th/cmp-nvim-lsp-signature-help",
  },
  config = function()
    vim.lsp.set_log_level("off") -- set log level to warn to avoid too much noise in the logs

    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local keymap = vim.keymap -- for conciseness

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf, silent = true }

        -- set keybinds
        opts.desc = "Show LSP references"
        keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references

        opts.desc = "Go to declaration"
        keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

        opts.desc = "Show LSP definitions"
        keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp definitions

        opts.desc = "Show LSP implementations"
        keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations

        opts.desc = "Show LSP type definitions"
        keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions

        opts.desc = "See available code actions"
        keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection

        opts.desc = "Smart rename"
        keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename

        opts.desc = "Show buffer diagnostics"
        keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file

        opts.desc = "Show line diagnostics"
        keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

        opts.desc = "Go to previous diagnostic"
        keymap.set("n", "[d", function()
          vim.diagnostic.jump({ direction = "previous" })
        end, opts) -- jump to previous diagnostic in buffer

        opts.desc = "Go to next diagnostic"
        keymap.set("n", "]d", function()
          vim.diagnostic.jump({ direction = "next" })
        end, opts) -- jump to next diagnostic in buffer

        opts.desc = "Show documentation for what is under cursor"
        keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

        opts.desc = "Restart LSP"
        keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary

        opts.desc = "Code action"
        keymap.set("n", "<space>ca", vim.lsp.buf.code_action, opts)

        keymap.set("n", "K", vim.lsp.buf.hover, opts)
        keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
      end,
    })

    -- used to enable autocompletion (assign to every lsp server config)
    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- Change the Diagnostic symbols in the sign column (gutter)
    vim.diagnostic.config({
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = " ",
          [vim.diagnostic.severity.WARN] = " ",
          [vim.diagnostic.severity.HINT] = "󰠠 ",
          [vim.diagnostic.severity.INFO] = " ",
        },
      },
    })

    -- configure svelte server
    vim.lsp.config("svelte", {
      capabilities = capabilities,
      on_attach = function(client, bufnr)
        vim.api.nvim_create_autocmd("BufWritePost", {
          pattern = { "*.js", "*.ts", "*.svelte" },
          callback = function(ctx)
            -- Here use ctx.match instead of ctx.file
            -- client.notify('$/onDidChangeTsOrJsFile', { uri = ctx.match })

            if client.name == "svelte" then
              client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.file })
            end
          end,
        })
      end,
    })

    -- configure emmet language server
    vim.lsp.config("emmet_ls", {
      capabilities = capabilities,
      filetypes = { "html", "css", "svelte" },
    })

    -- configure html server
    vim.lsp.config("html", {
      capabilities = capabilities,
      filetypes = { "html", "blade", "astro" },
      on_attach = function(client, bufnr)
        if vim.bo[bufnr].filetype == "blade" then
          client.server_capabilities.documentFormattingProvider = false
        end
      end,
    })

    -- configure lua server (with special settings)
    vim.lsp.config("lua_ls", {
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = {
              vim.fn.stdpath("data") .. "/lazy/laravel.nvim/lua",
              vim.env.VIMRUNTIME,
            },
            checkThirdParty = false,
          },
          completion = {
            callSnippet = "Replace",
          },
        },
      },
    })

    vim.lsp.config("cssls", {
      settings = {
        lint = {
          cssConflict = "warning",
          invalidApply = "ignore",
          invalidScreen = "error",
          invalidVariant = "error",
          invalidConfigPath = "error",
          invalidTailwindDirective = "error",
          recommendedVariantOrder = "warning",
        },
      },
      on_attach = function(client, bufnr)
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
      end,
    })

    vim.lsp.config("intelephense", {
      settings = {
        telemetry = {
          enabled = false,
        },
      },
    })

    vim.lsp.config("ts_ls", {
      capabilities = capabilities,
      filetypes = {
        "typescript",
        "javascript",
        "javascriptreact",
        "typescriptreact",
      },
      init_options = {
        plugins = {
          {
            name = "@vue/typescript-plugin",
            location = vim.fn.stdpath("data")
              .. "/mason/packages/vue-language-server/node_modules/@vue/language-server",
            languages = { "vue" },
          },
        },
      },
    })

    vim.lsp.config("vue_ls", {
      capabilities = capabilities,
      filetypes = {
        "vue",
        "javascript",
      },
      init_options = {
        vue = {
          hybridMode = false,
        },
        typescript = {
          -- tsdk = vim.fn.stdpath 'data' .. '/node_modules/typescript/lib',
          tsdk = vim.fn.getcwd() .. "/node_modules/typescript/lib",
        },
      },
      settings = {
        volar = {
          autoCompleteRefs = true,
        },
        vue = {
          format = {
            enable = false,
          },
          complete = {
            casing = {
              props = "kebab",
              tags = "kebab",
            },
          },
        },
      },
    })

    vim.lsp.config("vtsls", {
      filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
      settings = {
        vtsls = { tsserver = { globalPlugins = {} } },
        typescript = {
          inlayHints = {
            parameterNames = { enabled = "literals" },
            parameterTypes = { enabled = true },
            variableTypes = { enabled = true },
            propertyDeclarationTypes = { enabled = true },
            functionLikeReturnTypes = { enabled = true },
            enumMemberValues = { enabled = true },
          },
        },
      },
      before_init = function(_, config)
        table.insert(config.settings.vtsls.tsserver.globalPlugins, {
          name = "@vue/typescript-plugin",
          location = vim.fn.expand("$MASON/packages/vue-language-server/node_modules/@vue/language-server"),
          languages = { "vue" },
          configNamespace = "typescript",
          enableForWorkspaceTypeScriptVersions = true,
        })
      end,
      on_attach = function(client)
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
      end,
    })
  end,
}

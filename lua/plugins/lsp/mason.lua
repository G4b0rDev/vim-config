return {
  "mason-org/mason.nvim",
  dependencies = {
    "mason-org/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  build = ":MasonUpdate",
  config = function()
    require("mason").setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    require("mason-lspconfig").setup({
      -- list of servers for mason to install
      ensure_installed = {
        "html",
        "cssls",
        "tailwindcss",
        "svelte",
        "lua_ls",
        "intelephense",
        "rust_analyzer",
        "bashls",
        "astro",
        "docker_compose_language_service",
        "dockerls",
        "ts_ls",
        "cssls",
        "diagnosticls",
      },
    })

    require("mason-tool-installer").setup({
      ensure_installed = {
        "prettier", -- prettier formatter
        "stylua", -- lua formatter
        "eslint_d",
        "pint", -- laravel formatter
      },
    })
  end,
}

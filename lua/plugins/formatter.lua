-- Plugin: Formatter/Confrom
-- See: https://github.com/stevearc/conform.nvim
return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  cmd = { "ConformInfo" },
  opts = {
    formatters_by_ft = {
      javascript = { "prettier" },
      typescript = { "prettier" },
      vue = { "prettier" },
      svelte = { "prettier" },
      css = { "prettier" },
      html = { "prettier" },
      json = { "prettier" },
      markdown = { "prettier" },
      lua = { "stylua" },
      php = { "pint" },
      blade = { "bladeformatter" },
    },
    -- Set default options
    default_format_opts = {
      lsp_format = "fallback",
    },
    -- Set up format-on-save
    format_on_save = {
      timeout_ms = 5000,
      lsp_fallback = "fallback",
    },

    format_after_save = {
      lsp_format = "fallback",
    },
  },
}

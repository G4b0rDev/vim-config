return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  branch = "main",
  config = function()
    local ts = require("nvim-treesitter")

    local parsers = {
      "lua",
      "rust",
      "go",
      "bash",
      "php",
      "blade",
      "astro",
      "css",
      "dockerfile",
      "html",
      "json",
      "yaml",
      "scss",
      "typescript",
      "vue",
      "svelte",
      "json5",
      "javascript",
    }

    ts.install(parsers)

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "svelte", "vue", "blade", "html", "javascript", "php" },
      callback = function()
        vim.treesitter.start()
      end,
    })

    -- Replaces the legacy (now removed) `auto_install` option: install the
    -- parser for any other filetype the first time it's opened.
    vim.api.nvim_create_autocmd("FileType", {
      callback = function(args)
        local lang = vim.treesitter.language.get_lang(vim.bo[args.buf].filetype)
        if not lang or vim.list_contains(ts.get_installed("parsers"), lang) then
          return
        end
        if vim.list_contains(ts.get_available(), lang) then
          ts.install({ lang })
        end
      end,
    })
  end,
}

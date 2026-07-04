return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  branch = "main",
  config = function()
    local configs = require("nvim-treesitter.config")

    configs.setup({
      ensure_installed = {
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
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      -- indent = { enable = true },
      -- autotag = { enable = true },
    })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "svelte", "vue", "blade", "html", "javascript", "php" },
      callback = function()
        vim.treesitter.start()
      end,
    })
  end,
}

-- Plugin: NeoTree
-- See: https://github.com/nvim-neo-tree/neo-tree.nvim
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v2.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  lazy = false,
  cmd = "Neotree",
  config = function()
    -- config
    require("neo-tree").setup({
      close_if_last_window = true,

      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = true,
        },
      },
    })

    -- keymaps
    local opts = {
      noremap = true,
      silent = true,
    }

    vim.keymap.set("n", "<leader>op", ":Neotree toggle<cr>", opts)
  end,
}

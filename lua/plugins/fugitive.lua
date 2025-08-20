-- Fugitive config
-- See: https://github.com/tpope/vim-fugitive
return {
  "tpope/vim-fugitive",
  cmd = "Git",
  keys = {
    { "<leader>gg", ":Git<cr>", mode = "n" },
    { "<leader>gf", ":Git fetch<cr>", mode = "n" },
    { "<leader>gp", ":Git pull<cr>", mode = "n" },
    { "<leader>gP", ":Git push<cr>", mode = "n" },
  },
  config = function()
    local keymap = vim.keymap
    local opts = { noremap = true }

    keymap.set("n", "<leader>gg", ":Git<cr>", opts)
    keymap.set("n", "<leader>gf", ":Git fetch<cr>", opts)
    keymap.set("n", "<leader>gp", ":Git pull<cr>", opts)
    keymap.set("n", "<leader>gP", ":Git push<cr>", opts)
  end,
}

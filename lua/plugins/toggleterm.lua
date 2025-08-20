-- Plugin: ToggleTerm
-- See: https://github.com/akinsho/toggleterm.nvim
return {
  "akinsho/toggleterm.nvim",
  config = function()
    -- config
    local Terminal = require("toggleterm.terminal").Terminal
    local keymap_opts = { buffer = true }

    require("toggleterm").setup({
      direction = "horizontal",
      hidden = true,
      on_open = function()
        vim.keymap.set({ "n", "t" }, [[<esc><esc>]], vim.cmd.ToggleTerm, keymap_opts)
      end,
    })

    local float_terminal = Terminal:new({
      direction = "float",
      hidden = true,
      on_open = function(t)
        vim.keymap.set({ "n", "t" }, [[<esc><esc>]], vim.cmd.ToggleFloatTerm, keymap_opts)
      end,
    })

    vim.cmd.ToggleFloatTerm = function(t)
      float_terminal:toggle()
    end

    -- keymaps
    local opts = { noremap = true }

    vim.keymap.set("n", [[<leader>ot]], vim.cmd.ToggleTerm)
    vim.keymap.set("n", [[<leader>oT]], vim.cmd.ToggleFloatTerm)
  end,
}

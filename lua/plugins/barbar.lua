-- Plugin: Barbar
-- See: https://github.com/romgrk/barbar.nvim
return {
  "romgrk/barbar.nvim",
  requires = {
    { "nvim-tree/nvim-web-devicons" },
  },
  event = "BufWinEnter",
  config = function()
    -- config
    require("bufferline").setup({
      -- Enable/Disable animations
      animation = false,

      -- Enable/Disable auto-hiding the tab bar when there is a single buffer
      auto_hide = false,

      -- Enable/Disable current/total tabpages indicator (top right corner)
      tappages = false,

      clickable = false,

      -- Exclude buffers from the tabline
      exclude_ft = {},
      exclude_name = {},

      -- Hide inactive buffers and file extensions
      -- Other Options are `current` and `visible`
      hide = {
        extensions = false,
        inactive = false,
      },

      -- Enable/Disable icons
      -- if set to 'numbers' will show buffer index in the tabline
      -- if set to 'both', will show buffer index and icons in the tabline
      -- icons = true,
      icons = {
        buffer_index = false,
        buffer_number = false,
        button = "", -- Remove '' icon
      },

      -- If set, the icon color will follow its corresponding buffer highlight group.
      -- By default, the Buffer/Icon group is linked to the Buffer/group (see Highlighting below).
      -- Otherwise, it will take it's default value as defined by devicons
      icon_custom_colors = false,

      -- If true, new buffers will be inserted at the start/end of the list.
      -- Default is to insert after current buffer
      insert_at_end = true,
      insert_at_start = false,

      -- Sets the maximum padding width with which to surround each tab
      maximum_padding = 2,

      -- Set the minimum padding width with wich to surround each tab
      minimum_padding = 4,

      -- Set the maximum buffer name length
      maximum_length = 30,

      -- If set, the letters for each buffer in buffer-pick mode will be assigned based on their name.
      -- Otherwise or in case all letters are already assigned, the behavior is to assign letters in order of usability
      -- ( see order below)
      semantic_letters = true,

      -- New buffer letters are assigned in this order.
      -- This order is optimal for the qwerty keyboard layout but might need adjustment for other layouts.
      letters = "asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP",

      -- Sets the name of unnamed buffers. By default format is "[Buffer X]"
      -- where "X" is the buffer number. But only a static string is accepted here
      no_name_title = nil,
    })

    -- keymap
    local map = vim.keymap.set
    local opts = {
      noremap = true,
      silent = true,
    }

    -- Move previous/next
    map("n", "<A-h>", "<Cmd>BufferPrevious<CR>", opts)
    map("n", "<A-l>", "<Cmd>BufferNext<CR>", opts)

    -- Goto buffer in position
    map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
    map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
    map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
    map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
    map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
    map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
    map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
    map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
    map("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)

    -- Pin/unpin buffer
    map("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)

    -- Close buffer
    map("n", "<C-w>", "<Cmd>BufferClose<CR>", opts)
    map("n", "<A-W>", "<Cmd>BufferCloseAllButCurrent<CR>", opts)

    -- Magic buffer-picking mode
    map("n", "<A-o>", "<Cmd>BufferPick<CR>", opts)
  end,
}

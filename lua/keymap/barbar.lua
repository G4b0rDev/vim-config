local map = vim.keymap.set
local opts = {
    noremap = true,
    silent = true,
}

-- Move previous/next
map('n', '<A-h>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-l>', '<Cmd>BufferNext<CR>', opts)

-- Goto buffer in position
map('n', '<A-1>', '<Cmd>BufferGoTo 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoTo 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoTo 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoTo 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoTo 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoTo 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoTo 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoTo 8<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)

-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)

-- Close buffer
map('n', '<A-w>', '<Cmd>BufferClose<CR>', opts)
map('n', '<A-W>', '<Cmd>BufferCloseAllButCurrent<CR>', opts)

-- Magic buffer-picking mode
map('n', '<A-o>', '<Cmd>BufferPick<CR>', opts)

-- Signify config
-- See: https://github.com/mhinz/vim-signify

-- Hunk symbols
vim.g.signify_sign_add               = '+'
vim.g.signify_sign_delete            = '_'
vim.g.signify_sign_delete_first_line = '-'
vim.g.signify_sign_change            = "~"

-- Disable count for changes
vim.g.signify_sign_show_count = 0
vim.g.signify_sign_show_text  = 1
vim.g.signify_realtime        = 1

vim.cmd([[
    augroup FILES
        autocmd!
        autocmd BufEnter *.blade.php :set ft=blade
        autocmd BufEnter *.php :set autoindent
    augroup END
]])

vim.cmd([[autocmd BufWritePost *.php silent !./vendor/bin/pint %:p]])

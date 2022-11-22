" Signify config
" https://github.com/mhinz/vim-signify

" Hunk symbols
let g:signify_sign_add = '+'
let g:signify_sign_delete = '_'
let g:signify_sign_delete_first_line = '-'
let g:signify_sign_change = "~"

" Disable count for changes
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1
let g:signify_realtime = 1

" Jump though hunks
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)

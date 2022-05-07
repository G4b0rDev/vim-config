" Base config for the custom snippets
" Used:
"   https://github.com/SirVer/ultisnips
"   https://github.com/honza/vim-snippets

nnoremap <leader>se :UltiSnipsEdit<cr>
nnoremap <leader>s g:UltiSnipsExpandTrigger<cr>

let g:UltiSnipsExpandTrigger="<A-Cr>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:UltiSnipsEditSplit="vertical"

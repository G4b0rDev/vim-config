" Barbar config

let bufferline = get(g:, 'bufferline', {})

" Enable/Disable current/local tabpages indicator (top right corner)
let bufferline.tabpages = v:false

" Enable/Disable close button
let bufferline.closable = v:false

" If true, new buffers will be inserted at the start/end of the list.
" Default is to insert after current buffer
let bufferline.insert_at_start = v:false
let bufferline.insert_at_end = v:true

" Move previous/next
nnoremap <silent> <A-h> :BufferPrevious<CR>
nnoremap <silent> <A-l> :BufferNext<CR>

" Goto buffer in position
nnoremap <silent> <A-1> :BufferGoto 1<CR>
nnoremap <silent> <A-2> :BufferGoto 2<CR>
nnoremap <silent> <A-3> :BufferGoto 3<CR>
nnoremap <silent> <A-4> :BufferGoto 4<CR>
nnoremap <silent> <A-5> :BufferGoto 5<CR>
nnoremap <silent> <A-6> :BufferGoto 6<CR>
nnoremap <silent> <A-7> :BufferGoto 7<CR>
nnoremap <silent> <A-8> :BufferGoto 8<CR>

" Pin/unpin buffer
nnoremap <silent> <A-p> :BufferPin<CR>

" Close buffer
nnoremap <silent> <A-w> :BufferClose<CR>

" Magic buffer-picking mode
nnoremap <silent> <A-o> :BufferPick<CR>

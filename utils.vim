" Utils configuration
let g:commentdict = {'vim': "\"", 'lua': "--"}

" Toggle comments
function! ToggleComment()
    let commentSequence = get(g:commentdict, &ft, '//')

    if getline('.') =~ '^\s*'.commentSequence
        execute "s/".commentSequence."/"
    else
        execute "norm I".commentSequence
    endif
endfunction

command! -bar Todos vimgrep /\CTODO|FIXME|DEV|HACK/g ./* | copen

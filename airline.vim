" Airline config
" https://github.com/vim-airline/vim-airline

let g:airline_extensions = ['branch']
let g:airline_theme = 'base16_adwaita'

let g:airline_powerline_fonts = 1

function! AirlineInit()
    let g:airline_section_a = airline#section#create(['mode', '', 'branch'])
endfunction

autocmd VimEnter * call AirlineInit()

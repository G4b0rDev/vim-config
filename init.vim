#!/bin/bash

let mapleader = "\<space>"

" Config loader
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/airline.vim
source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/ultisnips.vim
source $HOME/.config/nvim/barbar.vim
source $HOME/.config/nvim/utils.vim
source $HOME/.config/nvim/signify.vim
source $HOME/.config/nvim/easy-align.vim
source $HOME/.config/nvim/theme.vim

if &term =~ '256color'
    " disable background color erase (BCE) so that color schemes render
    " properly when inside 256-color tmux and GNU screen.
    " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
    set t_Sb=
    set t_Sf=
    set t_Ut=
endif

" Set line numbers
set rnu

" Set split below
set splitbelow

" Enable title
set title

" Quick terminal
nmap <leader>ot 99<C-w>l:split<cr>:terminal<cr>10<C-w>_
nmap <leader>oT 99<C-w>l:vsplit<cr>:terminal<cr>

" Terminal normal mode remap
tnoremap <C-w>N <C-\><C-n>

" Fast saving
nmap <leader>w :w!<cr>

" Show current position
set ruler

" ColorColumn for indicating
set colorcolumn=120

" Ignore case for searching
set ignorecase "smartcase

" Highlight search results
set hlsearch

" Search
set incsearch

" Auto cmd's
augroup FILES
    autocmd!
    autocmd BufEnter *.blade.php :set ft=blade
augroup END

augroup FILES
    autocmd!
    autocmd BufEnter *.blade.php :set ft=blade
augroup END

" Screen centered search
nnoremap n nzz
nnoremap N Nzz

" Turn off search highlight when not needed
nnoremap <silent> <leader>nH :nohl<cr>

" Show matching brackets
set showmatch
set mat=2

" Enable syntax highlighting
syntax enable

" Set UTF-8 encoding
set encoding=utf-8

" Use spaces instead of tabs
set expandtab
set smarttab

set shiftwidth=4
set tabstop=4
set ai "Auto indent
set tabstop=4
set nowrap "Don't wrap lines

" Tab settings
nmap <leader>tn :tabnew<cr>
nmap <leader>to :tabonly<cr>
nmap <leader>tc :tabclose<cr>
nmap <leader>th :tabprevious<cr>
nmap <leader>tl :tabnext<cr>
nmap <leader>t<leader> :tabnext<cr>

" Fast splitting
map <leader>ss :split<cr>
map <leader>sv :vsplit<cr>

" Moving selected lines around
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Better split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Disable ex-mode
nnoremap Q <nop>

" Buffer management
function! CloseAllBuffersButCurrent()
    let curr = bufnr("%")
    let last = bufnr("$")

    if (curr > 1 | silent! execute "1,".(curr-1)."bd" | endif)
    if (curr < last | silent! execute (curr+1).",".last."bd" | endif)
endfunction

nmap <leader>bd :bd<cr>
nmap <silent> <leader>bD :call CloseAllBuffersButCurrent()<cr>

" NERDtree
map <leader>op :NERDTreeToggle<cr>
let NERDTreeShowHidden=1

" Toggle comments
noremap <leader># :call ToggleComment()<cr>

" Open git (fugitive)
nnoremap <leader>gg :Git<cr>
nnoremap <leader>gf :Git fetch<cr>
nnoremap <leader>gp :Git pull<cr>
nnoremap <leader>gP :Git push<cr>

" fzf config
map <leader><leader> :Files<cr>
map <leader>, :Buffers<cr>
nnoremap <silent> <Leader>f :Rg<cr>

" Blade Intellisense
nmap <silent> ga <Plug>(coc-codeaction-line)
nmap <silent> gA <Plug>(coc-codeaction)

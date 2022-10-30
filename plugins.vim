call plug#begin(stdpath('data') . '/plugged')
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'sheerun/vim-polyglot'

" CoC Plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'wuelnerdotexe/vim-astro'

" Icons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

Plug 'drewtempelmeyer/palenight.vim'

" Overlay
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'romgrk/barbar.nvim'

" GIT
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
Plug 'xuyuanp/nerdtree-git-plugin'

" Snippets
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

" TailwindCSS IntelliSense
Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}

call plug#end()

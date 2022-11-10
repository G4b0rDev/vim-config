" Signify config
" https://github.com/nvim-telescope/telescope.nvim

nnoremap <leader><leader> <cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍<cr>
nnoremap <leader>lg <cmd>Telescope live_grep<cr>
map <leader>, <cmd>Telescope buffers<cr>
map <leader>gb <cmd>Telescope git_branches<cr>

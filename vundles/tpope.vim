Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-abolish'

au VimEnter * xmap s <Plug>VSurround
au VimEnter * xmap S <Plug>VSurround

" For fugitive.git, dp means :diffput. Define dg to mean :diffget
nnoremap <silent> <Leader>dg :diffget<CR>
nnoremap <silent> <Leader>dp :diffput<CR>
nnoremap <silent> <Leader>gb :Gblame<CR>
nnoremap <silent> <Leader>gs :Gstatus<CR>
nnoremap <silent> <Leader>gd :Gdiff<CR>
nnoremap <silent> <Leader>gl :Glog<CR>
nnoremap <silent> <Leader>gc :Gcommit<CR>
nnoremap <silent> <Leader>gp :Git push<CR>
" Disable ,gw for :GitGrepWord
let g:git_grep_no_map = 1
nnoremap <silent> <Leader>gw :Gwrite<CR>

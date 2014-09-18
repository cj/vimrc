Plugin 'mtscout6/vim-ctags-autotag'
Plugin 'ivalkeen/vim-ctrlp-tjump'

nnoremap <c-]> :CtrlPtjump<cr>
vnoremap <c-]> :CtrlPtjumpVisual<cr>

let g:ctrlp_tjump_only_silent = 1

Plugin 'rking/ag.vim'

map <leader>x :Ag! ''<left>
autocmd BufReadPost quickfix nnoremap <silent> <buffer> <Enter> <CR>

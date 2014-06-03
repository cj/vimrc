Plugin 'rking/ag.vim'

map <leader>x :Ag! '' -i<left><left><left><left>
autocmd BufReadPost quickfix nnoremap <silent> <buffer> <Enter> <CR>

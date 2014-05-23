Plugin 'rking/ag.vim'

map <leader>x :LAg! '' -i<left><left><left><left>
autocmd BufReadPost quickfix nnoremap <silent> <buffer> <Enter> <CR>

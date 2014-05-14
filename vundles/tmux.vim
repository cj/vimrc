Plugin 'benmills/vimux'

let VimuxResetSequence = ''
map <Leader>, :w<CR> :call VimuxRunCommand("\e[A")<CR>

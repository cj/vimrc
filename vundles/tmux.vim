Plugin 'benmills/vimux'

let VimuxResetSequence = ''
map <silent><Leader>, :w<CR> :call VimuxRunCommand("\e[A")<CR>

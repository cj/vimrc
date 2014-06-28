Plugin 'benmills/vimux'
Plugin 'edkolev/tmuxline.vim'
Plugin 'christoomey/vim-tmux-navigator'

let VimuxResetSequence = ''
map <silent><Leader>. :w<CR> :call VimuxRunCommand("\e[A")<CR>

" run last vim terminal command
map <Leader>, :!<Up><CR>

" tmux defaults:
" status-right "#22T" %H:%M %d-%b-%y
" status-left [#S]
" winwows #I:#W#F
" let g:tmuxline_preset = {
"   \ 'a': '[#S]',
"   \ 'win': '#I:#W#F',
"   \ 'cwin': '#I:#W#F',
"   \ 'z': '"#22T" %H:%M %d-%b-%y',
"   \ 'options': {
"     \'status-justify': 'left',
"     \'status-position': 'top'}
" \}

" \ 'c': "#{pane_current_path}",
  " \ 'b': '#F',
let g:tmuxline_preset = {
  \ 'a': '#S',
  \ 'b': '#P',
  \ 'win': ['#I', '#W'],
  \ 'x': '%a',
  \ 'y': ['%b %d', '%R'],
  \ 'z': '#H',
  \ 'options': {
    \'status-position': 'top'}
\}

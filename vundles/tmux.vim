Plugin 'benmills/vimux'
Plugin 'edkolev/tmuxline.vim'
Plugin 'christoomey/vim-tmux-navigator'

let VimuxResetSequence = ''
map <silent><Leader>. :w<CR> :call VimuxRunCommand("\e[A")<CR>
" map <silent><Leader>t :w<CR> :call VimuxRunCommand("env \\$(cat .env .env.test) bundle exec ruby ".  @% . ' -l ' . line('.'))<CR>
" map <silent><Leader>T :w<CR> :call VimuxRunCommand("env \\$(cat .env .env.test) bundle exec ruby ".  @%)<CR>
map <silent><Leader>t :w<CR> :call VimuxRunCommand("ruby ".  @% . ' -l ' . line('.'))<CR>
map <silent><Leader>T :w<CR> :call VimuxRunCommand("ruby ".  @%)<CR>

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
  \ 'c': '#(cat ~/.pomo_stat)',
  \ 'win': ['#I', '#W'],
  \ 'x': '%a',
  \ 'y': ['%b %d', '%R'],
  \ 'z': '#H',
  \ 'options': {
    \'status-position': 'top'}
\}

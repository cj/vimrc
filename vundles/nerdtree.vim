" A tree explorer plugin for vim.
Plugin 'Xuyuanp/git-nerdtree'

" NERDTree and tabs together in Vim, painlessly
Plugin 'jistr/vim-nerdtree-tabs'

let NERDTreeIgnore                      =
            \ ['\.pyc', '\.git$', '\~$', '\.swo$', '\.hg', '\.svn', '\.bzr', '\.DS_Store']
let NERDTreeShowHidden = 1
let NERDTreeChDirMode  = 2
let NERDTreeMouseMode  = 2
let NERDTreeMinimalUI  = 1
let NERDTreeQuitOnOpen = 1
let g:nerdtree_tabs_open_on_console_startup = '0'
let g:nerdtree_tabs_open_on_gui_startup = '0'

" show current file in nerd tree
map <silent>,v :NERDTreeFind<CR>
map <C-g> :NERDTreeTabsToggle<CR>
au VimEnter * map <C-g> :NERDTreeTabsToggle<CR>

" A tree explorer plugin for vim.
Plugin 'Xuyuanp/git-nerdtree'

" NERDTree and tabs together in Vim, painlessly
" Plugin 'jistr/vim-nerdtree-tabs'

let NERDTreeIgnore                      =
            \ ['\.pyc', '\.git$', '\~$', '\.swo$', '\.hg', '\.svn', '\.bzr', '\.DS_Store']
let NERDTreeShowHidden = 1
" let NERDTreeChDirMode  = 0
let NERDTreeMouseMode  = 2
let NERDTreeMinimalUI  = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeHijackNetrw=1
let g:nerdtree_tabs_open_on_console_startup = '0'
let g:nerdtree_tabs_open_on_gui_startup = '0'

function! NTFinderP()
  "" Check if NERDTree is open
  if exists("t:NERDTreeBufName")
    let s:ntree = bufwinnr(t:NERDTreeBufName)
  else
    let s:ntree = -1
  endif
  if (s:ntree != -1)
    "" If NERDTree is open, close it.
    :NERDTreeClose
  else
    "" Try to open a :Rtree for the rails project
    if exists(":Rtree")
      "" Open Rtree (using rails plugin, it opens in project dir)
      :Rtree
    else
      "" Open NERDTree in the file path
      :NERDTreeFind
    endif
  endif
endfunction

"" Toggles NERDTreeFind
map <silent> <C-g> :call NTFinderP()<CR>
au VimEnter * map <silent> <C-g> :call NTFinderP()<CR>

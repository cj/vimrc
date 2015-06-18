" A tree explorer plugin for vim.
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
let g:NERDTreeIndicatorMap = {
  \ "Modified"  : "✹ ",
  \ "Staged"    : "✚",
  \ "Untracked" : "✭",
  \ "Renamed"   : "➜ ",
  \ "Unmerged"  : "═",
  \ "Deleted"   : "✖",
  \ "Dirty"     : "✗",
  \ "Clean"     : "✔︎",
  \ "Unknown"   : "?"
  \ }

Plugin 'ryanoasis/vim-webdevicons'

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
" let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '

" NERDTree and tabs together in Vim, painlessly
" Plugin 'jistr/vim-nerdtree-tabs'

let NERDTreeIgnore =
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

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

au VimEnter * call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
au VimEnter * call NERDTreeHighlightFile('html', 'green', 'none', 'green', '#151515')
au VimEnter * call NERDTreeHighlightFile('slim', 'green', 'none', 'green', '#151515')
au VimEnter * call NERDTreeHighlightFile('coffee', '5', 'none', '#ff00ff', '#151515')
au VimEnter * call NERDTreeHighlightFile('styl', '5', 'none', '#ff00ff', '#151515')
au VimEnter * call NERDTreeHighlightFile('less', '5', 'none', '#ff00ff', '#151515')
au VimEnter * call NERDTreeHighlightFile('scss', '5', 'none', '#ff00ff', '#151515')
au VimEnter * call NERDTreeHighlightFile('sass', '5', 'none', '#ff00ff', '#151515')
au VimEnter * call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
au VimEnter * call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
au VimEnter * call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
au VimEnter * call NERDTreeHighlightFile('js', 'cyan', 'none', 'cyan', '#151515')
au VimEnter * call NERDTreeHighlightFile('rb', 'Red', 'none', '#ffa500', '#151515')
au VimEnter * call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

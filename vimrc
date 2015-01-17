" User vimrc.before if available {{{
    if filereadable(expand("~/.vimrc.before"))
        source ~/.vimrc.before
    endif
" }}}
let mapleader = ","

" Load Vundles {{{
  source ~/.vimrc.vundles
" }}}

if filereadable(expand("~/.vim/.env"))
  source ~/.vim/.env
endif

" Set backups {{{
  source ~/.vimrc.backups
" }}}


set shell=zsh
set nocompatible
syntax on
set nowrap
set shortmess+=A " Always edit file, even when swap file is found
set backspace=eol,start,indent

" Fix esc timeout
" http://www.johnhawthorn.com/2012/09/vi-escape-delays/
set timeoutlen=1000 ttimeoutlen=0

" Theme
set t_Co=256
set background=dark
colorscheme candyman
hi Normal ctermbg=NONE
hi SignColumn ctermbg=NONE
hi LineNr ctermbg=NONE
hi NonText ctermbg=NONE
hi VertSplit ctermfg=238 ctermbg=238
hi StatusLine ctermfg=238 ctermbg=238
hi Search term=reverse cterm=NONE ctermfg=217
hi ColorColumn ctermbg=238
au VimEnter * match Todo /\(todo\|fix\|review\)>/
set colorcolumn=80
set tw=80
" set colorcolumn=+1

" Better Line Highlighting
au InsertEnter * set nocursorline cursorcolumn
au BufEnter,InsertLeave * set cursorline cursorcolumn
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" Show linenumbers
set number
set ruler

" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=

" display incomplete commands
set showcmd

" Set encoding
set encoding=utf-8

" Whitespace stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set autoindent
filetype plugin on
filetype indent on
" Add words with -'s to auto complete
set iskeyword+=-

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Status bar
set laststatus=2

" Turn off menu in gui
set guioptions="agimrLt"
" Turn off mouse click in gui
set mouse=""

" Enable per-project vimrcs
set exrc   " enable per-directory .vimrc files
set secure " disable unsafe commands in local .vimrc files

" Always copy the entire line
nnoremap Y yy
" Redo
map <silent> r :red<CR>
" Save
map <silent> W :w<CR>
" New tab
map <silent> ,n :tabnew<cr>
" Use numbers to pick the tab you want (like iTerm)
map <silent> ,1 :tabn 1<cr>
map <silent> ,2 :tabn 2<cr>
map <silent> ,3 :tabn 3<cr>
map <silent> ,4 :tabn 4<cr>
map <silent> ,5 :tabn 5<cr>
map <silent> ,6 :tabn 6<cr>
map <silent> ,7 :tabn 7<cr>
map <silent> ,8 :tabn 8<cr>
map <silent> ,9 :tabn 9<cr>

" Move between split windows by using the four directions H, J, K, L
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-l> <C-w>l
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-j> <C-w>j

" Toggles
set pastetoggle=<F1>

" Resize window splits
" TODO Fix mousewheel
nnoremap <Up>    3<C-w>+
nnoremap <Down>  3<C-w>-
nnoremap <Left>  3<C-w><
nnoremap <Right> 3<C-w>>

" Makes splitting windows more natural
set splitbelow splitright
nnoremap <silent> _ <C-w>n
nnoremap <silent> \| :vne<CR>
nnoremap <silent><C-g> :view ./<CR>

" When opening a file, always jump to the last cursor position
autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \     exe "normal g'\"zz" |
    \ endif |

" After 4s of inactivity, check for external file modifications on next keyrpress
au CursorHold * checktime

set listchars=tab:▸\ ,trail:•,extends:»,precedes:«

vnoremap <tab> >gv
vnoremap <s-tab> <gv

" copy to buffer
vmap <C-c> :w! ~/.vimbuffer<CR>
nmap <C-c> :.w! ~/.vimbuffer<CR>
" paste from buffer
map <C-o> :r ~/.vimbuffer<CR>

" Clear the search buffer when hitting return
function! MapCR()
  nnoremap <silent><cr> :nohlsearch<cr>
endfunction
call MapCR()

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Use Q to intelligently close a window
" " (if there are multiple windows into the same buffer)
" " or kill the buffer entirely if it's the last window looking into that buffer
function! CloseWindowOrKillBuffer()
  let number_of_windows_to_this_buffer = len(filter(range(1, winnr('$')), "winbufnr(v:val) == bufnr('%')"))

  " We should never bdelete a nerd tree
  if matchstr(expand("%"), 'NERD') == 'NERD'
    wincmd c
    return
  endif

  if number_of_windows_to_this_buffer > 1
    wincmd c
  else
    bdelete
  endif
endfunction

nnoremap <silent> Q :call CloseWindowOrKillBuffer()<CR>

" Show trailing whitespace and spaces before a tab:
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/
" }}}

autocmd BufRead,BufNewFile *.jbuilder set filetype=ruby
autocmd BufRead,BufNewFile *.dom set filetype=ruby

cmap w!! w !sudo tee > /dev/null %

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" User vimrc.after if available {{{
if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif
" }}}

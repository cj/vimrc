Plugin 'tomtom/quickfixsigns_vim'

let g:quickfixsigns_classes=['qfl', 'vcsdiff', 'breakpoints']

au VimEnter * hi QuickFixSignsDiffAdd ctermfg=22 ctermbg=NONE guifg=dark
au VimEnter * hi QuickFixSignsDiffChange ctermfg=100 ctermbg=NONE guifg=dark
au VimEnter * hi QuickFixSignsDiffDelete ctermfg=124 ctermbg=NONE guifg=dark

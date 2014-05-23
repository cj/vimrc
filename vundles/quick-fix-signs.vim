Plugin 'tomtom/quickfixsigns_vim'

let g:quickfixsigns_classes=['longlines', 'qfl', 'vcsdiff', 'breakpoints']

au VimEnter * hi QuickFixSignsDiffAdd ctermfg=22 ctermbg=NONE guifg=dark
au VimEnter * hi QuickFixSignsDiffChange ctermfg=100 ctermbg=NONE guifg=dark
au VimEnter * hi QuickFixSignsDiffDelete ctermfg=124 ctermbg=NONE guifg=dark
au VimEnter * hi QuickFixSignsLongLines ctermfg=124 ctermbg=NONE guifg=dark
sign define QFS_LONGLINES text=⊇ texthl=QuickFixSignsLongLines

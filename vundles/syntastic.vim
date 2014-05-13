Plugin 'scrooloose/syntastic'

function! ToggleErrors()
  if empty(filter(tabpagebuflist(), 'getbufvar(v:val, "&buftype") is# "quickfix"'))
    " No location/quickfix list shown, open syntastic error location panel
    Errors
  else
    lclose
  endif
endfunction
nnoremap <silent> <C-e> :<C-u>call ToggleErrors()<CR>

let g:syntastic_html_checkers=['']
let g:syntastic_slim_checkers=['']

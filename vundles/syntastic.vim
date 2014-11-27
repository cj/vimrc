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

let g:syntastic_ruby_checkers = ['rubocop', 'mri']
let g:syntastic_ruby_rubocop_args = '--config ~/.vim/rubocop.yml'

" Ruby code completetion
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

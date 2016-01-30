Plugin 't9md/vim-ruby-xmpfilter'
" gem install rcodetools

autocmd FileType ruby nmap <buffer> <F4> <Plug>(xmpfilter-run)
autocmd FileType ruby xmap <buffer> <F4> <Plug>(xmpfilter-run)
autocmd FileType ruby imap <buffer> <F4> <Plug>(xmpfilter-run)

autocmd FileType ruby nmap <buffer> <F3> <Plug>(xmpfilter-mark)
autocmd FileType ruby xmap <buffer> <F3> <Plug>(xmpfilter-mark)
autocmd FileType ruby imap <buffer> <F3> <Plug>(xmpfilter-mark)

Plugin 'hwartig/vim-seeing-is-believing'
" gem install seeing_is_believing

augroup seeingIsBelievingSettings
  autocmd!

  autocmd FileType ruby nmap <buffer> <F5> <Plug>(seeing-is-believing-mark-and-run)
  autocmd FileType ruby xmap <buffer> <F5> <Plug>(seeing-is-believing-mark-and-run)

  " autocmd FileType ruby nmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
  " autocmd FileType ruby xmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
  " autocmd FileType ruby imap <buffer> <F4> <Plug>(seeing-is-believing-mark)
  "
  autocmd FileType ruby nmap <buffer> <F6> <Plug>(seeing-is-believing-run)
  autocmd FileType ruby imap <buffer> <F6> <Plug>(seeing-is-believing-run)
augroup END

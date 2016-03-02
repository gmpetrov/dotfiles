
" vim-go conf

"au FileType go nmap <leader>r <Plug>(go-run)
au FileType go map <leader>r :!clear <CR> :!go run %<CR>
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

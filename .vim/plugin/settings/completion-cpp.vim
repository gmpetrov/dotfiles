" Useful cpp completions

" cout ==> std::cout << '' << std::end;
function CoutCompletion()
  let word = expand("<cword>")

  if len(word) == 0
      :iunmap <Tab>
      :exe "normal i \t"
      :inoremap <Tab> <Esc> :call CoutCompletion()<CR>
      :startinsert
      return 0
  endif

  if word == "cout"
      :exe "normal :s/cout/std::cout\ \<\< \"\" \<\< std::endl;\<CR>14\<Right>"
      :startinsert
  else
      :iunmap <Tab>
      :exe "normal i \t"
      :inoremap <Tab> <Esc> :call CoutCompletion()<CR>
      :startinsert

  endif
endfunction

" Map CoutCompletion function to <Tab> key
inoremap <Tab> <Esc> :call CoutCompletion()<CR>


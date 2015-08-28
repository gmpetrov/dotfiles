execute pathogen#infect()
filetype plugin indent on

inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0
inoremap <C-x> <Esc>:w<CR>
set tabstop=4
syntax on
set expandtab   
set shiftwidth=4
set autoindent   
set smartindent  
set cindent
set mouse=a 
set number

autocmd bufnewfile *.s so ~/Desktop/asm_header.txt
autocmd bufnewfile *.s exe "1," . 10 . "g/File Name :.*/s//".expand("%")
autocmd bufnewfile *.s exe "1," . 10 . "g/Creation Date :.*/s//Creation Date : " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.s execute "normal ma"
autocmd Bufwritepre,filewritepre *.s exe "1," . 10 . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%c")
autocmd bufwritepost,filewritepost *.c execute "normal `a"

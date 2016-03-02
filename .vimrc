execute pathogen#infect()
filetype plugin indent on

set tabstop=4
syntax on
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set cindent
set mouse=a
set number
set noswapfile
set backspace=indent,eol,start

" Functions to avoid conflicts with NeoComplete and MultiCusor plugins
function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction

function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction

" Neocomplete
let g:neocomplete#enable_at_startup = 1

" Nearthree toogle shortcut
map <C-n> :NERDTreeToggle<CR>

" Remove trailling space on space
autocmd BufWritePre * :%s/\s\+$//e

" Set vim theme
colorscheme elflord

" Set colors of completion window
highlight Pmenu ctermbg=lightcyan ctermfg=black

" Go to begin/end of line unix's shortcut
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0

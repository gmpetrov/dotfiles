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

au FileType lua nmap <Leader>r :!clear <CR> :!th %:p <CR>
au FileType python nmap <Leader>r :!clear <CR> :!python %:p <CR>
au FileType python nmap <Leader>t :!clear <CR> :!python *.test.py <CR>

au CompleteDone * pclose

" Neocomplete
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" <TAB>: completion.
inoremap <expr><C-l>     neocomplete#complete_common_string()


" Nearthree toogle shortcut
map <C-m> :NERDTreeToggle<CR>

" Remove trailling space on space
autocmd BufWritePre * :%s/\s\+$//e

" Set vim theme
colorscheme elflord

" Set colors of completion window
highlight Pmenu ctermbg=lightcyan ctermfg=black

" Go to begin/end of line unix's shortcut
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0

nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>i

nnoremap <C-W>O :call MaximizeToggle()<CR>
nnoremap <C-W>o :call MaximizeToggle()<CR>
nnoremap <C-W><C-O> :call MaximizeToggle()<CR>

"
" Section : Functions
"

function! MaximizeToggle()
    if exists("s:maximize_session")
        exec "source " . s:maximize_session
        call delete(s:maximize_session)
        unlet s:maximize_session
        let &hidden=s:maximize_hidden_save
        unlet s:maximize_hidden_save
    else
        let s:maximize_hidden_save = &hidden
        let s:maximize_session = tempname()
        set hidden
        exec "mksession! " . s:maximize_session
        only
    endif
endfunction

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

au BufWrite * :Autoformat
let g:autoformat_autoindent = 0

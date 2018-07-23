call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'terryma/vim-multiple-cursors'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'Raimondi/delimitMate'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'altercation/vim-colors-solarized'
call plug#end()

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
au FileType go nmap <Leader>t :!clear <CR> :!go run *(?!test).go <CR>
au FileType go nmap <Leader>m :!clear <CR> :!make <CR>

au CompleteDone * pclose

" Nearthree toogle shortcut
" map <C-m> :NERDTreeToggle<CR>

" Remove trailling space on space
" autocmd BufWritePre * :%s/\s\+$//e


" Set colors of completion window
" highlight Pmenu ctermbg=lightcyan ctermfg=black

" Go to begin/end of line unix's shortcut
inoremap <C-e> <C-o>$
inoremap <C-a> <C-o>0

nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>i

nnoremap <C-W>O :call MaximizeToggle()<CR>
nnoremap <C-W>o :call MaximizeToggle()<CR>
nnoremap <C-W><C-O> :call MaximizeToggle()<CR>

" au BufWrite * Prettier
" let g:autoformat_autoindent = 0
" let g:autoformat_retab = 0
" let g:autoformat_remove_trailing_spaces = 0

map <C-m> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

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

"""""""""""""""""""
" Airline Conf file
"""""""""""""""""""
let g:airline_theme='luna'
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
nmap <F8> :TagbarToggle<CR>
set t_Co=256

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
""""

syntax enable
set background=dark
colorscheme solarized

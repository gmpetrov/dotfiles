call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-commentary'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'
"Plug 'pangloss/vim-javascriptir'
"Plug 'mxw/vim-jsx'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
" Plug 'Raimondi/delimitMate'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'rust-lang/rust.vim'
call plug#end()

filetype plugin indent on

set tabstop=4
syntax on
set expandtab
set shiftwidth=2
set autoindent
set smartindent
set smarttab
set cindent
set mouse=a
set number
set noswapfile
set backspace=indent,eol,start
set showmatch
set hlsearch

" Go to begin/end of line unix's shortcut
inoremap <C-e> <C-o>$
Plug 'majutsushi/tagbar'
inoremap <C-a> <C-o>0

nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>i

" https://github.com/tpope/vim-commentary
" " if FileType is not implemented 
" autocmd FileType apache setlocal commentstring=#\ %s


" https://github.com/preservim/nerdtree
map <C-m> :NERDTreeToggle<CR>

" https://github.com/altercation/vim-colors-solarized
syntax enable
set background=dark
colorscheme solarized

" inoremap (; (<CR>);<C-c>O
" inoremap (, (<CR>),<C-c>O
" inoremap {; {<CR>};<C-c>O
" inoremap {, {<CR>},<C-c>O
" inoremap [; [<CR>];<C-c>O
" inoremap [, [<CR>],<C-c>O

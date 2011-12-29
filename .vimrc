filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set nocompatible
set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
"set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
"set relativenumber
set undofile
"Remap Leader key
let mapleader=","

"Search behavior
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
"replace global in a line
set gdefault
set incsearch
set showmatch
set hlsearch
"Clear search
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
"Handle long line
set wrap
set textwidth=79
set formatoptions=qrn1
"set colorcolumn=85

"get rid of the arrow key
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
nnoremap ; :
au FocusLost * :wa
"QUick esc
inoremap jj <ESC>
"Split vertical window
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
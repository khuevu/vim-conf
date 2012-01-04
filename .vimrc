filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on
call pathogen#helptags()
set nocompatible
set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
"color
syntax enable
set background=light
colorscheme molokai
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
set number
"back up
set backup
set undofile
set undolevels=1000
set undoreload=10000
"Save and load view state
au BufWinLeave * silent! mkview
au BufWinEnter * silent! loadview

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

"Yank to the end of line
nnoremap Y y$
function! InitializeDirectories()
    let separator = "."
    let parent = $HOME
    let prefix = ".vim"
    let dir_list = {'backup': 'backupdir', 'views': 'viewdir', 'swap': 'directory', 'undo': 'undodir'}
    for [dirname, settingname] in items(dir_list)
        let directory = parent . '/' . prefix . dirname . '/'
        if exists("*mkdir")
            if !isdirectory(directory)
                call mkdir(directory)
            endif
        endif
        if !isdirectory(directory)
            echo "Unable to create backup directory" . directory
        else
            exec "set " . settingname . "=" . directory
        endif
    endfor
endfunction
call InitializeDirectories()
"NERDTree
map <C-e> :NERDTreeToggle<CR>:NERDTreeMirror<CR>
map <leader>e :NERDTreeFind<CR>

"Delimitmate 
au FileType * let b:delimitMate_autoclose = 1

"Enable mouse usage
set mouse=a
"Ack
nnoremap <leader>a :Ack
"Folding
nnoremap <leader>ft Vatzf
"Command-T
let g:CommandTSearchPath = $HOME 

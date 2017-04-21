syntax on
filetype plugin indent on
" set tabstop=4
set showmatch " Shows matching brackets
set ruler " Always shows location in file (line #)
set shiftwidth=4
set softtabstop=4
set expandtab
set mouse-=a

set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set smarttab
set backspace=indent,eol,start
set autoindent
set copyindent
set nostartofline
set confirm
set cmdheight=2
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F2>
set incsearch

set history=1000
set undolevels=1000

" Relative and absolute line numberings
" set number " This is for setting the absolute line numberings.
set relativenumber

" Absolute line numbers only when vim is in focus.
au FocusLost * set number
au FocusGained * set relativenumber

" Relative numbers in Normal mode and Absolute in Insert mode.
autocmd InsertEnter * set number
autocmd InsertLeave * set relativenumber

" Mappings
let mapleader=","

" Exit visual mode quickly
vno v <esc>

" Better normal mode
:inoremap jk <esc>
nnoremap ; :
:inoremap <S-CR> <Esc>

" Removes highlighting after a search
nmap <silent> ,/ :nohlsearch<CR>

"Easy windowd navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Yank until end of line
map Y y$

if $COLORTERM == 'gnome-terminal'
        set t_Co=256
endif

set t_Co=256

set nocompatible              " be iMproved, required
filetype off                  " required

" PostgreSQL
let g:sql_type_default = 'pgsql'

" Whitespace Remover
autocmd BufWritePre * :%s/\s\+$//e

" EJS as HTML
au BufNewFile,BufRead *.ejs set filetype=html

" Tabs per file
autocmd Filetype elm setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype json setlocal ts=2 sw=2 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 expandtab
autocmd Filetype yml setlocal ts=2 sw=2 expandtab

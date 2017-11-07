" ================
" | Vim Settings |
" ================

syntax on
filetype plugin indent on

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

" Set up relative line numbers
set relativenumber


" ============
" | Mappings |
" ============

" Mappings
let mapleader=","

" Exit visual mode quickly
vno v <esc>

" Better normal mode
:inoremap jk <esc> " Maps jk to the escape key.
nnoremap ; :
:inoremap <S-CR> <Esc>

" Move to the start and end of line easier.
nnoremap L $
nnoremap H ^

" Removes highlighting after a search
nmap <silent> ,/ :nohlsearch<CR>

" Easy windowd navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Yank until end of line
map Y y$

set nocompatible " be iMproved, required

" Whitespace Remover
autocmd BufWritePre * :%s/\s\+$//e


" =====================
" | Filetype Settings |
" =====================

" EJS as HTML
au BufNewFile,BufRead *.ejs set filetype=html

" Tabs per file
" autocmd Filetype elm setlocal ts=2 sw=2 expandtab
autocmd Filetype haskell setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype json setlocal ts=2 sw=2 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 expandtab
autocmd Filetype yml setlocal ts=2 sw=2 expandtab

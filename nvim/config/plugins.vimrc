" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')


" ===================
" | Shortcuts Plugs |
" ===================

Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'Tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'ervandew/supertab'
Plug 'junegunn/vim-easy-align'


" ============
" | UI Plugs |
" ============

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'jeetsukumaran/vim-buffergator'
" Plug 'Yggdroot/indentLine'


" ================
" | Syntax Plugs |
" ================

Plug 'jiangmiao/auto-pairs'
Plug 'plasticboy/vim-markdown'
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'ekalinin/dockerfile.vim'
Plug 'chase/vim-ansible-yaml'
Plug 'lifepillar/pgsql.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'cespare/vim-toml'
Plug 'rust-lang/rust.vim'


" ==================================
" | Linters and Autocomplete Plugs |
" ==================================

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ntpeters/vim-better-whitespace'
Plug 'sbdchd/neoformat'
Plug 'ambv/black'

" Plug 'dense-analysis/ale'


" =====================
" | Colorscheme Plugs |
" =====================

Plug 'nanotech/jellybeans.vim'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'w0ng/vim-hybrid'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'NLKNguyen/papercolor-theme'
Plug 'joshdick/onedark.vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'chriskempson/base16-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'jacoborus/tender.vim'


" Initialize plugin system
call plug#end()

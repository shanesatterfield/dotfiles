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
Plug 'mattreduce/vim-mix'
" Plug 'paredit.vim' " This is deprecated because it's from vim-scripts.
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
Plug 'junegunn/vim-github-dashboard'
Plug 'tpope/vim-fireplace'
" Plug 'Yggdroot/indentLine'


" ================
" | Syntax Plugs |
" ================

Plug 'groenewege/vim-less'
Plug 'derekwyatt/vim-scala'
Plug 'jiangmiao/auto-pairs'
Plug 'plasticboy/vim-markdown'
Plug 'tfnico/vim-gradle'
Plug 'kchmck/vim-coffee-script'
Plug 'leafgarland/typescript-vim'
Plug 'hynek/vim-python-pep8-indent'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elixir-lang/vim-elixir'
Plug 'ekalinin/dockerfile.vim'
Plug 'chase/vim-ansible-yaml'
Plug 'elzr/vim-json'
" Plug 'lambdatoast/elm.vim'
" Plug 'neovimhaskell/haskell-vim'
Plug 'itchyny/vim-haskell-indent'
Plug 'elmcast/elm-vim'
Plug 'briancollins/vim-jst'
Plug 'digitaltoad/vim-jade'
Plug 'lifepillar/pgsql.vim'
Plug 'bhurlow/vim-parinfer'
Plug 'mustache/vim-mustache-handlebars'
Plug 'elmcast/elm-vim'
Plug 'udalov/kotlin-vim'
Plug 'herringtondarkholme/yats.vim'
Plug 'posva/vim-vue'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }


" ==================================
" | Linters and Autocomplete Plugs |
" ==================================

Plug 'ntpeters/vim-better-whitespace'
Plug 'Shutnik/jshint2.vim'
Plug 'benekastah/neomake'
Plug 'sbdchd/neoformat'
Plug 'quramy/tsuquyomi'
" Plug 'venantius/vim-cljfmt'
" Plug 'scrooloose/syntastic'
" Plug 'jshint/jshint'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'zchee/deoplete-go'

" Autocomplete for deoplete
Plug 'zchee/deoplete-jedi'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'carlitux/deoplete-ternjs'
Plug 'mhartington/nvim-typescript', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" Plug 'w0rp/ale'


" =====================
" | Colorscheme Plugs |
" =====================

Plug 'nanotech/jellybeans.vim'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'w0ng/vim-hybrid'
Plug 'tyrannicaltoucan/vim-quantum'
" Plug 'yantze/pt_black'
" Plug 'Lokaltog/vim-distinguished'
" Plug 'morhetz/gruvbox'


" Initialize plugin system
call plug#end()

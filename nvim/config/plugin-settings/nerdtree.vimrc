" ============
" | NERDTree |
" ============

let NERDTreeIgnore = ['\.pyc$','\.class$','\.o$']
let NERDTreeShowLineNumbers=1
autocmd FileType nerdtree setlocal relativenumber

" NERDTreeTabs
"let g:nerdtree_tabs_open_on_console_startup=1
map <Leader>n <plug>NERDTreeTabsToggle<CR>

" NerdCommenter
let NERDSpaceDelims=1

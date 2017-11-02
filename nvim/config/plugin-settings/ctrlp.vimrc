" =========
" | CtrlP |
" =========

let g:ctrlp_map = '<c-p>'

" Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn|gradle|idea)|\_site|node_modules|bower_components|build|out|dist|target|env)$',
  \ 'file': '\v\.(exe|so|dll|class|o|pyc|png|jpg|jpeg)$',
\}

" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'

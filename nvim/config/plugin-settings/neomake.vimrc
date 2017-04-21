" Neomake
" if has('nvim')
let g:neomake_javascript_jscs_maker = {
    \ 'exe': 'jscs',
    \ 'args': ['--preset', 'airbnb', '--reporter', 'inline'],
    \ 'errorformat': '%f: line %l\, col %c\, %m',
    \ }

let g:neomake_jsx_jscs_maker = g:neomake_javascript_jscs_maker

let g:neomake_make_maker = {
    \ 'exe': 'make',
    \ 'args': ['--build'],
    \ 'errorformat': '%f:%l:%c: %m',
    \ }

let g:neomake_javascript_enabled_makers = ['jscs']
let g:neomake_jsx_enabled_makers = g:neomake_javascript_enabled_makers
let g:neomake_java_enabled_makers = ['javac']
let g:neomake_haskell_enabled_makers = []
" let g:neomake_verbose=3
" let g:neomake_open_list = 2
autocmd! BufWritePost * Neomake
" endif

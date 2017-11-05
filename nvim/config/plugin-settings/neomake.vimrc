" ===========
" | Neomake |
" ===========

" When reading a buffer (after 1s), and when writing.
call neomake#configure#automake('nrw', 1000)

" let g:neomake_open_list = 2 " Automatically opens the errors window.

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

" let g:neomake_python_flake8_maker = {
    " \ 'args': ['--ignore=E221,E241,E272,E251,W702,E203,E201,E202',  '--format=default'],
    " \ 'errorformat':
        " \ '%E%f:%l: could not compile,%-Z%p^,' .
        " \ '%A%f:%l:%c: %t%n %m,' .
        " \ '%A%f:%l: %t%n %m,' .
        " \ '%-G%.%#',
    " \ }
let g:neomake_python_enabled_makers = ['flake8', 'pep8', 'vulture']

function! neomake#makers#ft#python#vulture() abort
     return {
         \ 'append_file': 0,
         \ 'args': ['%:p:h'],
         \ 'errorformat': '%f:%l: %m',
         \ }
 endfunction

let g:neomake_javascript_enabled_makers = ['jscs']
let g:neomake_jsx_enabled_makers = g:neomake_javascript_enabled_makers
let g:neomake_java_enabled_makers = ['gradle']
let g:neomake_haskell_enabled_makers = []
" let g:neomake_verbose=3
" let g:neomake_open_list = 2
autocmd! BufWritePost * Neomake
" endif

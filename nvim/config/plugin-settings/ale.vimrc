" =======
" | Ale |
" =======
"
" Error and warning signs.
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'

let g:ale_linters = {
\   'python': ['flake8', 'pylint'],
\   'javascript': ['eslint'],
\   'rust': ['analyzer'],
\}

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

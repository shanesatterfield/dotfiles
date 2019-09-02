" let g:black_linelength=120

let g:black_virtualenv = '/usr/local/bin/'
autocmd BufWritePre *.py execute ':Black'

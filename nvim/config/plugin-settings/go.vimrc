" ==========
" | Golang |
" ==========

" Syntax highlighting
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

let g:go_auto_type_info = 1

" Highlight variables that are the same
" let g:go_auto_sameids = 1

" Automatically import go packages
let g:go_fmt_command = "goimports"
let g:go_addtags_transform = "camelcase"

" Temporarily remove warning
let g:go_version_warning = 0

" Find functions within the same package. Requires ctrlp. Use with ,gt
au FileType go nmap <leader>gt :GoDeclsDir<cr>

" Go to declaration of symbol
au FileType go nmap <F12> <Plug>(go-def)

" Sets the tab size to 4
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

" =================
" | NeoVim Config |
" =================

" The path to this actual vimrc file even if called through a symlink.
let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" Dynamically load other vimrc files using paths relative to this actual file.
function Include(filePath)
    for f in split(glob(s:path . a:filePath), '\n')
        exe 'source' f
    endfor
endfunction

" Include vimrrc files.
call Include('/config/general.vimrc')
call Include('/config/plugins.vimrc')
call Include('/config/plugin-settings/*.vimrc')
call Include('/config/theme.vimrc')

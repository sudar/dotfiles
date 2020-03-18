" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

" autocomplete
setlocal omnifunc=csscomplete#CompleteCSS

"Sort CSS properties
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>

" jsbeautify key options
"noremap <buffer> <c-l> :call CSSBeautify()<cr>

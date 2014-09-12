"The default folding in JavaScript is broken. So let's fix it
function! JavaScriptFold()
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
    return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction

call JavaScriptFold()
setlocal fen

" autocomplete options
set omnifunc=javascriptcomplete#CompleteJS

" Syntastic options
let g:syntastic_javascript_checker="jslint" "Use jslint as the checker
let g:syntastic_javascript_jslint_conf = "--sloppy" "options for jslint

" jsbeautify key options
noremap <buffer>  <c-l> :call JsBeautify()<cr>

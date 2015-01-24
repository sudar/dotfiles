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
let g:syntastic_javascript_checkers=['jshint'] "Use jshint as the checker

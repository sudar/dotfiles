" Don't load the build-in global doxygen syntax.
" For some reason this breaks phpDoc
let g:load_doxygen_syntax=0

" Config for PHP syntax file
let php_ignore_phpdoc = 0  "Don't ignore phpdoc highlighting
let php_folding = 2        "Set PHP folding of classes and functions and all {}
let php_phpdoc_folding = 1 "Enable folding for phpDoc comments
let php_htmlInStrings = 1  "Syntax highlight HTML code inside PHP strings.
let php_sql_query = 1      "Syntax highlight SQL code inside PHP strings.
let php_noShortTags = 1    "Disable PHP short tags.
let php_baselib = 1        "for highlighting baselib functions
let php_alt_comparisons= 1 "to highlight comparison operators in an alternate colour

" autocomplete options
setlocal omnifunc=phpcomplete#CompletePHP

" Add =; as a word
setlocal matchpairs+==:;

" Surround configuration for PHP. Adds yss- command
let b:surround_45 = "<?php \r ?>"

" Syntastic options
let g:syntastic_php_checkers = ['php']

" Override the highlighting of phpDoc Comments
function! PhpSyntaxOverride()
    hi! def link phpCommentStar phpIdentifier
    hi! def link phpDocTags  phpDefine
    hi! def link phpDocParam phpType
    hi! def link phpDocIdentifier phpIdentifier
    hi! def link phpDocComment String
    hi! def link phpCommentTitle phpType
endfunction
call PhpSyntaxOverride()

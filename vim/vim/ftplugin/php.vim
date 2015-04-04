" Don't load the build-in global doxygen syntax.
" For some reason this breaks phpDoc
let g:load_doxygen_syntax=0

" Config for PHP syntax file
let php_ignore_phpdoc = 0  "Don't ignore phpdoc highlighting
let php_htmlInStrings = 1  "Syntax highlight HTML code inside PHP strings.
let php_sql_query = 1      "Syntax highlight SQL code inside PHP strings.
let php_noShortTags = 1    "Disable PHP short tags.
let php_baselib = 1        "for highlighting baselib functions
let php_alt_comparisons= 1 "to highlight comparison operators in an alternate colour

" Config for PHP folding
let b:phpfold_use = 1 "Fold groups of use statements in the global scope.
let b:phpfold_group_iftry = 0 "Fold if/elseif/else and try/catch/finally blocks as a group, rather than each part separate.
let b:phpfold_group_args = 1 "Group function arguments split across multiple lines into their own fold.
let b:phpfold_group_case = 1 "Fold case and default blocks inside switches.
let b:phpfold_heredocs = 1 "Fold HEREDOCs and NOWDOCs.
let b:phpfold_doc_with_funcs = 1 "Fold DocBlocks. Overrides b:phpfold_docblocks.
let b:phpfold_text = 1 "Enable the custom foldtext option.

" autocomplete options
setlocal omnifunc=phpcomplete#CompletePHP

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

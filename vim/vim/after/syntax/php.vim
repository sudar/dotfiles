syn clear phpDocComment
syn region phpDocComment start="/\*\*" end="\*/" keepend contains=phpCommentTitle,phpDocTags,phpTodo,@Spell fold

function! PhpSyntaxOverride()
    hi! def link phpCommentStar phpIdentifier
    hi! def link phpDocTags  phpDefine
    hi! def link phpDocParam phpType
    hi! def link phpDocIdentifier phpIdentifier
    hi! def link phpDocComment String
    hi! def link phpCommentTitle phpType
endfunction

call PhpSyntaxOverride()

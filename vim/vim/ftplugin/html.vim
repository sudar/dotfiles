" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

" nice defaults
setlocal scrolloff=999

" autocomplete
setlocal omnifunc=htmlcomplete#CompleteTags

" Move Tags to separate lines. Copied from http://stackoverflow.com/a/9987878/24949
command! MoveTags :s/<[^>]*>/\r&\r/g | :g/^$/d

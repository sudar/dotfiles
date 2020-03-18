" WordPress specific settings. This will be applied on top of PHP

" Options for formatting WordPress code
let g:formatdef_phptidy = '"phptidy - -q -c=/Users/sudar/Dropbox/code/dotfiles/vim/vim/phptidy-config.php"'
let g:formatters_php_wordpress = ['phptidy']

" Syntastic options
let g:syntastic_wordpress_checkers = ['phpcs']
let g:syntastic_wordpress_phpcs_standard = "WordPress-Core" "Default standard
"Standard file name. This should be at the root of the project.
"If not found then the default standard is used
let g:syntastic_wordpress_phpcs_standard_file = "phpcs.xml"

let g:syntastic_quiet_messages = { 'regex' : 'match the expected filename' }

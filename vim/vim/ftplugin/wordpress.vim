" WordPress specific settings. This will be applied on top of PHP

" Add Doxygen support for WordPress files
"au Syntax php.wordpress
        "\ if (exists('b:load_doxygen_syntax') && b:load_doxygen_syntax)
        "\       || (exists('g:load_doxygen_syntax') && g:load_doxygen_syntax)
        "\   | runtime! syntax/doxygen.vim
        "\ | endif

" Syntastic options
let g:syntastic_wordpress_checkers = ['phpcs']
let g:syntastic_wordpress_phpcs_args = "--report=csv --standard=WordPress-Core"
let g:syntastic_wordpress_phpcs_quiet_messages = { 'regex': [ 'Line indented incorrectly', 'Function name .* is in camel caps format' ] }

" Options for formatting WordPress code
let g:formatprg_php_wordpress = "/Users/sudar/Dropbox/code/wp/phptidy/phptidy.php"
let g:formatprg_args_expr_php_wordpress = '"- -q -c=/Users/sudar/Dropbox/code/dotfiles/vim/vim/phptidy-config.php"'
"let g:formatprg_args_expr_php_wordpress = '"print -q -c=/Users/sudar/Dropbox/code/dotfiles/vim/vim/phptidy-config.php %:p"'

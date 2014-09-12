" WordPress specific settings. This will be applied on top of PHP

" Add Doxygen support for WordPress files
"au Syntax php.wordpress
        "\ if (exists('b:load_doxygen_syntax') && b:load_doxygen_syntax)
        "\       || (exists('g:load_doxygen_syntax') && g:load_doxygen_syntax)
        "\   | runtime! syntax/doxygen.vim
        "\ | endif

" Syntastic options
let g:syntastic_wordpress_checkers = ['phpcs']
let g:syntastic_wordpress_phpcs_args = "--report=csv --standard=/Users/sudarm/Dropbox/code/WordPress-Coding-Standards/bulkwp.ruleset.xml"
"let g:syntastic_wordpress_phpcs_args = "--report=csv --standard=WordPress-Core"

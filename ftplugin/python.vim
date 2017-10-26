setlocal shiftwidth=4
setlocal tabstop=4
setlocal softtabstop=4
setlocal smarttab

" PYMODE : enable
let g:pymode = 1

" PYMODE : disable the following
let g:pymode_virtualenv = 0
let g:pymode_folding    = 0
let g:pymode_indent     = 0
let g:pymode_doc        = 0
let g:pymode_rope       = 0

" PYMODE.Linting
let g:pymode_lint            = 1
let g:pymode_lint_write      = 1
let g:pymode_lint_unmodified = 0
let g:pymode_lint_checkers   = ['pep8']
" " let g:pymode_lint_ignore = "E203,E302,E501,E303,E221,W0611,W391,E251,W0401,E261,E272,E116,E402,E128"

" PYMODE.Syntax
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_print_as_function = 1

" Error codes 
" E261  - two spaces before a comment
" E251  - 'unexpected spaces around '=' in default parameter assignment' 
" W0401 - from __ import * ==> 'unable to detect undefined names'... 

